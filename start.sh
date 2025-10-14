#!/bin/bash

echo "[INFO] Pod run-comfyui-wan started"

# Enable SSH if PUBLIC_KEY is set
if [[ -n "$PUBLIC_KEY" ]]; then
    mkdir -p ~/.ssh && chmod 700 ~/.ssh
    echo "$PUBLIC_KEY" >> ~/.ssh/authorized_keys
    chmod 600 ~/.ssh/authorized_keys
    service ssh start
fi

# Move necessary files to workspace
for script in comfyui-on-workspace.sh provisioning-on-workspace.sh readme-on-workspace.sh; do
    if [ -f "/$script" ]; then
        echo "Executing $script..."
        "/$script"
    else
        echo "⚠️ WARNING: Skipping $script (not found)"
    fi
done

# Create output directory for cloud transfer
mkdir -p /workspace/output/

# Set optimalisations
# export COMFYUI_USE_FLASH_ATTENTION=1 
# export COMFYUI_USE_SAGE_ATTENTION=1
export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True,garbage_collection_threshold:0.8
export COMFYUI_VRAM_MODE=HIGH_VRAM

# GPU detection
HAS_GPU=0
if [[ -n "${RUNPOD_GPU_COUNT:-}" && "${RUNPOD_GPU_COUNT:-0}" -gt 0 ]]; then
  HAS_GPU=1
  echo "✅ [GPU DETECTED] Found via RUNPOD_GPU_COUNT=${RUNPOD_GPU_COUNT}"
elif command -v nvidia-smi >/dev/null 2>&1; then
  if nvidia-smi >/dev/null 2>&1; then
    HAS_GPU=1
    GPU_MODEL=$(nvidia-smi --query-gpu=name --format=csv,noheader | xargs | sed 's/,/, /g')
    echo " ✅ [GPU DETECTED] Found via nvidia-smi → Model(s): ${GPU_MODEL}"
  fi
elif [[ -n "${CUDA_VISIBLE_DEVICES:-}" && "${CUDA_VISIBLE_DEVICES}" != "-1" ]]; then
  HAS_GPU=1
  echo "✅ [GPU DETECTED] Found via CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES}"
else
  echo "⚠️ [NO GPU] Running on CPU only"
fi

# Run services
if [[ "$HAS_GPU" -eq 1 ]]; then    
	# Start code-server (HTTP port 9000)
    if [[ -n "$PASSWORD" ]]; then
        code-server /workspace --auth password --disable-update-check --disable-telemetry --host 0.0.0.0 --bind-addr 0.0.0.0:9000 &
    else
        echo "⚠️ PASSWORD is not set as an environment variable use password in log file"
        code-server /workspace --disable-telemetry --disable-update-check --host 0.0.0.0 --bind-addr 0.0.0.0:9000 &
    fi
	
	sleep 2
	
    # Start ComfyUI (HTTP port 8188)
    python3 /workspace/ComfyUI/main.py ${COMFYUI_EXTRA_ARGUMENTS:---listen --preview-method latent2rgb} &
	
	# Wait until ComfyUI is ready
	MAX_TRIES=40
	COUNT=0
	
	until curl -s http://127.0.0.1:8188 > /dev/null; do
	    COUNT=$((COUNT+1))
	    if [[ $COUNT -ge $MAX_TRIES ]]; then
	        echo "❌ [ERROR] ComfyUI did not start after $MAX_TRIES attempts (~1min)."
	        # Kill background processes if needed
	        pkill -f "/workspace/ComfyUI/main.py" || true
	    fi
	    echo "[INFO] Waiting for ComfyUI to start... ($COUNT/$MAX_TRIES)"
	    sleep 5
	done
else
    echo "⚠️ WARNING: No GPU available, ComfyUI and Code Server not started to limit memory use"
fi

# Function to download models if variables are set
download_model_HF() {
    local model_var="$1"
    local file_var="$2"
    local dest_dir="$3"

    if [[ -n "${!model_var}" && -n "${!file_var}" ]]; then
        hf download "${!model_var}" "${!file_var}" --local-dir "/workspace/ComfyUI/models/$dest_dir/" || \
            echo "⚠️ Failed to download ${!model_var}/${!file_var}"
        sleep 1
    fi

    return 0
}

download_model_CIVITAI() {
    local url_var="$1"
    local dest_dir="$2"

    # Check if URL variable is set and not empty
    if [[ -z "${!url_var}" ]]; then
        return 0
    fi

    # Check if CIVITAI_TOKEN is set
    if [[ -z "$CIVITAI_TOKEN" ]]; then
        echo "⚠️ ERROR: CIVITAI_TOKEN is not set as an environment variable '$url_var' not downloaded"
        return 1
    fi

    # Run the civitai command
    civitai "${!url_var}" "/workspace/ComfyUI/models/$dest_dir/" || \
            echo "⚠️ Failed to download ${!url_var}"
	sleep 1
	
	return 0
}

download_workflow() {
    local url_var="$1"

    # Check if URL variable is set and not empty
    if [[ -z "${!url_var}" ]]; then
        return 0
    fi

    # Destination directory
    local dest_dir="/workspace/ComfyUI/user/default/workflows/"
    mkdir -p "$dest_dir"

    # Get filename from URL
    local url="${!url_var}"
    local filename
    filename=$(basename "$url")

    echo "[INFO] Downloading $filename ..."
    if ! wget -q -P "$dest_dir" "$url"; then
        echo "⚠️ Failed to download $url"
        return 0
    fi

    local filepath="${dest_dir}${filename}"

    # Automatically extract common archive formats
    case "$filename" in
        *.zip)
            echo "[INFO] Unzipping $filename ..."
            unzip -o "$filepath" -d "$dest_dir" >/dev/null 2>&1 || echo "⚠️ Failed to unzip $filename"
            ;;
        *.tar.gz|*.tgz)
            echo "[INFO] Extracting $filename ..."
            tar -xzf "$filepath" -C "$dest_dir" || echo "⚠️ Failed to extract $filename"
            ;;
        *.tar.xz)
            echo "[INFO] Extracting $filename ..."
            tar -xJf "$filepath" -C "$dest_dir" || echo "⚠️ Failed to extract $filename"
            ;;
        *.tar.bz2)
            echo "[INFO] Extracting $filename ..."
            tar -xjf "$filepath" -C "$dest_dir" || echo "⚠️ Failed to extract $filename"
            ;;
        *.7z)
            echo "[INFO] Extracting $filename ..."
            7z x -y -o"$dest_dir" "$filepath" >/dev/null 2>&1 || echo "⚠️ Failed to extract $filename"
            ;;
        *)
            echo "[INFO] No extraction performed for $filename"
            ;;
    esac

    sleep 1
    return 0
}

# provisioning workflows
echo "[INFO] Provisioning workflows"

for i in $(seq 1 50); do
    VAR="WORKFLOW${i}"
    download_workflow "$VAR"
done

# provisioning Models and loras
echo "[INFO] Provisioning models"

# categorie:  NAME:SUFFIX:MAP
CATEGORIES_HF=(
  "VAE:VAE_FILENAME:vae"
  "UPSCALER:UPSCALER_PTH:upscale_models"
  "LORA:LORA_FILENAME:loras"
  "TEXT_ENCODERS:TEXT_ENCODERS_FILENAME:text_encoders"
  "CLIP_VISION:CLIP_VISION_FILENAME:clip_vision"
  "PATCHES:PATCHES_FILENAME:model_patches"
  "AUDIO_ENCODERS:AUDIO_ENCODERS_FILENAME:audio_encoders"
  "DIFFUSION_MODELS:DIFFUSION_MODELS_FILENAME:diffusion_models"
  "CHECKPOINTS:CHECKPOINTS_FILENAME:checkpoints"
  "VL:VL_FILENAME:VLM"
  "SAMS:SAMS_FILENAME:sams"
)

for cat in "${CATEGORIES_HF[@]}"; do
  IFS=":" read -r NAME SUFFIX DIR <<< "$cat"

  for i in $(seq 1 10); do
    VAR1="HF_MODEL_${NAME}${i}"
    VAR2="HF_MODEL_${SUFFIX}${i}"

    download_model_HF "$VAR1" "$VAR2" "$DIR"
  done
done

# categorie: NAME:MAP
CATEGORIES_CIVITAI=(
  "LORA_URL:loras"
)

for cat in "${CATEGORIES_CIVITAI[@]}"; do
  IFS=":" read -r NAME DIR MAX <<< "$cat"

  for i in $(seq 1 10); do
    VAR1="CIVITAI_MODEL_${NAME}${i}"

    download_model_CIVITAI "$VAR1" "$DIR"
  done
done


# Final messages
echo "✅ Provisioning done, running with following environment"

python - <<'PY'
import torch, platform, triton, os, onnxruntime as ort
print(f"Python: {platform.python_version()}")
print(f"PyTorch: {torch.__version__}")
print(f"Triton version: {triton.__version__}")
print(f"ONNX Runtime version: {ort.__version__}")
print(f"Available providers: {ort.get_available_providers()}")
print(f"CUDA provider available: { 'CUDAExecutionProvider' in ort.get_available_providers()}")
print(f"CUDA available: {torch.cuda.is_available()}")
if torch.cuda.is_available():
    print(f"  ↳ CUDA runtime: {torch.version.cuda}")
    print(f"  ↳ GPU(s): {[torch.cuda.get_device_name(i) for i in range(torch.cuda.device_count())]}")
    print(f"  ↳ cuDNN: {torch.backends.cudnn.version()}")
    print(f"Torch build info: {torch.__config__.show()}")
PY

echo "✅ Ready to create AI content."

# Keep the container running
exec sleep infinity
