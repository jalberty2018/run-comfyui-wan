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

# GPU detection
HAS_GPU=0
if [[ -n "${RUNPOD_GPU_COUNT:-}" && "${RUNPOD_GPU_COUNT:-0}" -gt 0 ]]; then
  HAS_GPU=1
elif command -v nvidia-smi >/dev/null 2>&1; then
  nvidia-smi >/dev/null 2>&1 && HAS_GPU=1 || true
elif [[ -n "${CUDA_VISIBLE_DEVICES:-}" && "${CUDA_VISIBLE_DEVICES}" != "-1" ]]; then
  HAS_GPU=1
fi

# Run services
if [[ "$HAS_GPU" -eq 1 ]]; then
    # Start code-server (HTTP port 9000)
    if [[ -n "$PASSWORD" ]]; then
        code-server /workspace --auth password --disable-telemetry --host 0.0.0.0 --bind-addr 0.0.0.0:9000 &
    else
        echo "⚠️ WARNING: PASSWORD is not set as an environment variable"
        code-server /workspace --disable-telemetry --host 0.0.0.0 --bind-addr 0.0.0.0:9000 &
    fi
	
	sleep 2

    # Start ComfyUI (HTTP port 8188)
    python3 /workspace/ComfyUI/main.py ${COMFYUI_EXTRA_ARGUMENTS:---listen} &
	
	# Wait until ComfyUI is ready
    until curl -s http://127.0.0.1:8188 > /dev/null; do
        echo "[INFO] Waiting for ComfyUI to start..."    
		sleep 4
    done
		
	# Confirmation	
	echo "[INFO] Code Server & ComfyUI started"
	
else
    echo "⚠️ WARNING: No GPU available, ComfyUI and Code Server not started to limit memory use"
fi
	
# Function to download models if variables are set
download_model_HF() {
    local model_var="$1"
    local file_var="$2"
    local dest_dir="$3"

    if [[ -n "${!model_var}" && -n "${!file_var}" ]]; then
        hf download "${!model_var}" "${!file_var}" --local-dir "/workspace/ComfyUI/models/$dest_dir/" --quiet
		sleep 1
    fi
}

download_model_CIVITAI() {
    local url_var="$1"
    local dest_dir="$2"

    # Check if URL variable is set and not empty
    if [[ -z "${!url_var}" ]]; then
        return 1
    fi

    # Check if CIVITAI_TOKEN is set
    if [[ -z "$CIVITAI_TOKEN" ]]; then
        echo "⚠️ ERROR: CIVITAI_TOKEN is not set as an environment variable '$url_var' not downloaded"
        return 1
    fi

    # Run the civitai command
    civitai "${!url_var}" "/workspace/ComfyUI/models/$dest_dir/"
	sleep 1
}

# Provisioning Models and loras

echo "[INFO] Provisioning started"

download_model_HF HF_MODEL_VAE HF_MODEL_VAE_FILENAME "vae"

download_model_HF HF_MODEL_UPSCALER1 HF_MODEL_UPSCALER_PTH1 "upscale_models"
download_model_HF HF_MODEL_UPSCALER2 HF_MODEL_UPSCALER_PTH2 "upscale_models"

download_model_HF HF_MODEL_TEXT_ENCODERS1 HF_MODEL_TEXT_ENCODERS_FILENAME1 "text_encoders"
download_model_HF HF_MODEL_TEXT_ENCODERS2 HF_MODEL_TEXT_ENCODERS_FILENAME2 "text_encoders"

download_model_HF HF_MODEL_CLIP_VISION HF_MODEL_CLIP_VISION_FILENAME "clip_vision"

download_model_HF HF_MODEL_LORA1 HF_MODEL_LORA_FILENAME1 "loras"
download_model_HF HF_MODEL_LORA2 HF_MODEL_LORA_FILENAME2 "loras"
download_model_HF HF_MODEL_LORA3 HF_MODEL_LORA_FILENAME3 "loras"
download_model_HF HF_MODEL_LORA4 HF_MODEL_LORA_FILENAME4 "loras"
download_model_HF HF_MODEL_LORA5 HF_MODEL_LORA_FILENAME5 "loras"
download_model_HF HF_MODEL_LORA6 HF_MODEL_LORA_FILENAME6 "loras"
download_model_HF HF_MODEL_LORA7 HF_MODEL_LORA_FILENAME7 "loras"
download_model_HF HF_MODEL_LORA8 HF_MODEL_LORA_FILENAME8 "loras"
download_model_HF HF_MODEL_LORA9 HF_MODEL_LORA_FILENAME9 "loras"
download_model_HF HF_MODEL_LORA10 HF_MODEL_LORA_FILENAME10 "loras"

download_model_CIVITAI CIVITAI_MODEL_LORA_URL1 "loras"
download_model_CIVITAI CIVITAI_MODEL_LORA_URL2 "loras"
download_model_CIVITAI CIVITAI_MODEL_LORA_URL3 "loras"
download_model_CIVITAI CIVITAI_MODEL_LORA_URL4 "loras"
download_model_CIVITAI CIVITAI_MODEL_LORA_URL5 "loras"
download_model_CIVITAI CIVITAI_MODEL_LORA_URL6 "loras"
download_model_CIVITAI CIVITAI_MODEL_LORA_URL7 "loras"
download_model_CIVITAI CIVITAI_MODEL_LORA_URL8 "loras"
download_model_CIVITAI CIVITAI_MODEL_LORA_URL9 "loras"
download_model_CIVITAI CIVITAI_MODEL_LORA_URL10 "loras"

download_model_HF HF_MODEL_DIFFUSION_MODELS1 HF_MODEL_DIFFUSION_MODELS_FILENAME1 "diffusion_models"
download_model_HF HF_MODEL_DIFFUSION_MODELS2 HF_MODEL_DIFFUSION_MODELS_FILENAME2 "diffusion_models"

download_model_HF HF_MODEL_CHECKPOINTS HF_MODEL_CHECKPOINTS_FILENAME "checkpoints"

# Final message
echo "✅ Provisioning done. Ready to create AI content."

# Keep the container running
exec sleep infinity