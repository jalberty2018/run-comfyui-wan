# Environment variables for templates run-comfyui-wan

## t2v WAN 2.2

### Public with lighning , Dyna and animate

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
WORKFLOW1=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/Lucy-edit-v2v-dev-pod.json
WORKFLOW2=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-KSampler-Dyno-pod.json
WORKFLOW3=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-MoeKSampler-pod.json
WORKFLOW4=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-MoeSamplerAdv-Dyno.pod.json
WORKFLOW5=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-MoeSamplerAdv-pod.json
WORKFLOW6=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-TripleKSampler-pod.json
WORKFLOW7=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-animate-vi2v-point-editor-pod.json
WORKFLOW8=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-animate-vi2v-sam-pod.json
```

### Private with lighning

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
WORKFLOW1=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-MoeKSampler-pod.json
WORKFLOW2=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-MoeSamplerAdv-pod.json
WORKFLOW3=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-TripleKSampler-pod.json
```

## t2v WAN 2.2 Dyno

### Public

```bash
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors
HF_MODEL_DIFFUSION_MODELS2=lightx2v/Wan2.2-Lightning
HF_MODEL_DIFFUSION_MODELS_FILENAME2=Wan2.2-T2V-A14B-4steps-250928-dyno/Wan2.2-T2V-A14B-4steps-250928-dyno-high-lightx2v.safetensors
HF_MODEL_VAE1=Kijai/WanVideo_comfy
HF_MODEL_VAE_FILENAME1=Wan2_1_VAE_fp32.safetensors
HF_MODEL_TEXT_ENCODERS1=LS110824/text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=wan21UMT5XxlFP32_fp32.safetensors
HF_MODEL_LORA1=lightx2v/Wan2.2-Lightning
HF_MODEL_LORA_FILENAME1=Wan2.2-T2V-A14B-4steps-lora-250928/low_noise_model.safetensors
HF_MODEL_LORA2=Kijai/WanVideo_comfy
HF_MODEL_LORA_FILENAME2=Pusa/Wan22_PusaV1_lora_HIGH_resized_dynamic_avg_rank_98_bf16.safetensors
HF_MODEL_LORA3=Kijai/WanVideo_comfy
HF_MODEL_LORA_FILENAME3=Pusa/Wan22_PusaV1_lora_LOW_resized_dynamic_avg_rank_98_bf16.safetensors
WORKFLOW1=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-KSampler-Dyno-pod.json
WORKFLOW2=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-MoeSamplerAdv-Dyno.pod.json
```

### Private

```bash
CIVITAI_TOKEN="{{ RUNPOD_SECRET_CivitAI_API_KEY }}"
HF_TOKEN="{{ RUNPOD_SECRET_HF_TOKEN_WRITE }}"
PASSWORD="{{ RUNPOD_SECRET_CODE-SERVER-NEW }}"
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/Wan_2.2_ComfyUI_Repackaged
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors
HF_MODEL_DIFFUSION_MODELS2=lightx2v/Wan2.2-Lightning
HF_MODEL_DIFFUSION_MODELS_FILENAME2=Wan2.2-T2V-A14B-4steps-250928-dyno/Wan2.2-T2V-A14B-4steps-250928-dyno-high-lightx2v.safetensors
HF_MODEL_VAE1=Kijai/WanVideo_comfy
HF_MODEL_VAE_FILENAME1=Wan2_1_VAE_fp32.safetensors
HF_MODEL_TEXT_ENCODERS1=LS110824/text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=wan21UMT5XxlFP32_fp32.safetensors
HF_MODEL_LORA1=lightx2v/Wan2.2-Lightning
HF_MODEL_LORA_FILENAME1=Wan2.2-T2V-A14B-4steps-lora-250928/low_noise_model.safetensors
HF_MODEL_LORA2=Kijai/WanVideo_comfy
HF_MODEL_LORA_FILENAME2=Pusa/Wan22_PusaV1_lora_HIGH_resized_dynamic_avg_rank_98_bf16.safetensors
HF_MODEL_LORA3=Kijai/WanVideo_comfy
HF_MODEL_LORA_FILENAME3=Pusa/Wan22_PusaV1_lora_LOW_resized_dynamic_avg_rank_98_bf16.safetensors
WORKFLOW1=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-KSampler-Dyno-pod.json
WORKFLOW2=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-t2v-MoeSamplerAdv-Dyno.pod.json
```

## WAN 2.2 animate with lightning

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
WORKFLOW1=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-animate-vi2v-point-editor-pod.json
WORKFLOW2=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-animate-vi2v-sam-pod.json
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
WORKFLOW1=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-animate-vi2v-point-editor-pod.json
WORKFLOW2=https://github.com/jalberty2018/run-comfyui-wan/releases/download/1.0/WAN22-animate-vi2v-sam-pod.json
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