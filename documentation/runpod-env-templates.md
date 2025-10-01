# Environment variables for templates run-comfyui-wan

## t2v WAN 2.2

### Public

```bash
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors
HF_MODEL_VAE1=Kijai/WanVideo_comfy
HF_MODEL_VAE_FILENAME1=Wan2_1_VAE_fp32.safetensors
HF_MODEL_TEXT_ENCODERS1=LS110824/text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=wan21UMT5XxlFP32_fp32.safetensors
HF_MODEL_UPSCALER2=LS110824/upscale
HF_MODEL_UPSCALER_PTH2=4x_foolhardy_Remacri.pth
HF_MODEL_LORA1=LS110824/Wan21_lora
HF_MODEL_LORA_FILENAME1=DetailEnhancerV1.safetensors
HF_MODEL_LORA2=LS110824/Wan21_lora
HF_MODEL_LORA_FILENAME2=HighSpeedDynamics.safetensors
HF_MODEL_LORA3=vrgamedevgirl84/Wan14BT2VFusioniX
HF_MODEL_LORA_FILENAME3=FusionX_LoRa/Wan2.1_T2V_14B_FusionX_LoRA.safetensors
HF_MODEL_DIFFUSION_MODELS2=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_DIFFUSION_MODELS_FILENAME2=split_files/diffusion_models/wan2.2_t2v_high_noise_14B_fp16.safetensors
HF_MODEL_LORA4=lightx2v/Wan2.2-Lightning
HF_MODEL_LORA_FILENAME4=Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1.1/low_noise_model.safetensors
HF_MODEL_LORA5=lightx2v/Wan2.2-Lightning
HF_MODEL_LORA_FILENAME5=Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1.1/high_noise_model.safetensors
HF_MODEL_LORA6=lightx2v/Wan2.2-Lightning
HF_MODEL_LORA_FILENAME6=Wan2.2-T2V-A14B-4steps-lora-250928/high_noise_model.safetensors
HF_MODEL_LORA7=lightx2v/Wan2.2-Lightning
HF_MODEL_LORA_FILENAME7=Wan2.2-T2V-A14B-4steps-lora-250928/low_noise_model.safetensors
```

### Private

```bash
CIVITAI_TOKEN="{{ RUNPOD_SECRET_CivitAI_API_KEY }}"
HF_TOKEN="{{ RUNPOD_SECRET_HF_TOKEN_WRITE }}"
PASSWORD="{{ RUNPOD_SECRET_CODE-SERVER-NEW }}"
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors
HF_MODEL_DIFFUSION_MODELS2=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_DIFFUSION_MODELS_FILENAME2=split_files/diffusion_models/wan2.2_t2v_high_noise_14B_fp16.safetensors
HF_MODEL_VAE1=Kijai/WanVideo_comfy
HF_MODEL_VAE_FILENAME1=Wan2_1_VAE_fp32.safetensors
HF_MODEL_TEXT_ENCODERS1=LS110824/text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=wan21UMT5XxlFP32_fp32.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_LORA1=lightx2v/Wan2.2-Lightning
HF_MODEL_LORA_FILENAME1=Wan2.2-T2V-A14B-4steps-lora-250928/high_noise_model.safetensors
HF_MODEL_LORA2=lightx2v/Wan2.2-Lightning
HF_MODEL_LORA_FILENAME2=Wan2.2-T2V-A14B-4steps-lora-250928/low_noise_model.safetensors
WORKFLOW1=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-tripleKSampler-NAG-Lightning-pod.json
```

## WAN 2.2 animate

### Public

```bash
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/wan2.2_animate_14B_bf16.safetensors
HF_MODEL_VAE1=Kijai/WanVideo_comfy
HF_MODEL_VAE_FILENAME1=Wan2_1_VAE_fp32.safetensors
HF_MODEL_CLIP_VISION1=Comfy-Org/Wan_2.1_ComfyUI_repackaged
HF_MODEL_CLIP_VISION_FILENAME1=split_files/clip_vision/clip_vision_h.safetensors
HF_MODEL_TEXT_ENCODERS1=LS110824/text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=wan21UMT5XxlFP32_fp32.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_LORA1=Kijai/WanVideo_comfy
HF_MODEL_LORA_FILENAME1=Lightx2v/lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.safetensors
HF_MODEL_LORA2=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_LORA_FILENAME2=split_files/loras/wan2.2_animate_14B_relight_lora_bf16.safetensors
```

### Private

```bash
CIVITAI_TOKEN="{{ RUNPOD_SECRET_CivitAI_API_KEY }}"
HF_TOKEN="{{ RUNPOD_SECRET_HF_TOKEN_WRITE }}"
PASSWORD="{{ RUNPOD_SECRET_CODE-SERVER-NEW }}"
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/wan2.2_animate_14B_bf16.safetensors
HF_MODEL_VAE1=Kijai/WanVideo_comfy
HF_MODEL_VAE_FILENAME1=Wan2_1_VAE_fp32.safetensors
HF_MODEL_CLIP_VISION1=Comfy-Org/Wan_2.1_ComfyUI_repackaged
HF_MODEL_CLIP_VISION_FILENAME1=split_files/clip_vision/clip_vision_h.safetensors
HF_MODEL_TEXT_ENCODERS1=LS110824/text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=wan21UMT5XxlFP32_fp32.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_LORA1=Kijai/WanVideo_comfy
HF_MODEL_LORA_FILENAME1=Lightx2v/lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.safetensors
HF_MODEL_LORA2=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_LORA_FILENAME2=split_files/loras/wan2.2_animate_14B_relight_lora_bf16.safetensors
```

## WAN 2.2 s2v

### Private

```bash
CIVITAI_TOKEN="{{ RUNPOD_SECRET_CivitAI_API_KEY }}"
HF_TOKEN="{{ RUNPOD_SECRET_HF_TOKEN_WRITE }}"
PASSWORD="{{ RUNPOD_SECRET_CODE-SERVER-NEW }}"
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/wan2.2_s2v_14B_bf16.safetensors
HF_MODEL_VAE1=Kijai/WanVideo_comfy
HF_MODEL_VAE_FILENAME1=Wan2_1_VAE_fp32.safetensors
HF_MODEL_TEXT_ENCODERS1=LS110824/text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=wan21UMT5XxlFP32_fp32.safetensors
HF_AUDIO_ENCODERS1=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_AUDIO_ENCODERS_FILENAME1=split_files/audio_encoders/wav2vec2_large_english_fp16.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
```