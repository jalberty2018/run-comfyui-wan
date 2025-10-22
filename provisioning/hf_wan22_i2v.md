# Manual provisioning WAN 2.2 i2v

- [ComfyUI Huggingface](https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/tree/main/split_files)
- [Wan-AI Huggingface](https://huggingface.co/Wan-AI)
- [GGUF](https://huggingface.co/QuantStack)
- [Kijai](https://huggingface.co/Kijai/WanVideo_comfy)
- [Lightx2v](https://huggingface.co/lightx2v/Wan2.2-I2V-A14B-Moe-Distill-Lightx2v)

## Diffusion model

### Standard fp16

```bash
hf download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_i2v_low_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/

hf download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_i2v_high_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### Lightning

```bash
hf download lightx2v/Wan2.2-Official-Models wan2.2_i2v_A14b_high_noise_lightx2v.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/

hf download lightx2v/Wan2.2-Official-Models wan2.2_i2v_A14b_low_noise_lightx2v.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## CLIP Text encoder

### fp32

```bash
hf download LS110824/text_encoders wan21UMT5XxlFP32_fp32.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp16

```bash
hf download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/text_encoders/umt5_xxl_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

### Standard

```bash
hf download Comfy-Org/Wan_2.1_ComfyUI_repackaged split_files/vae/wan_2.1_vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### fp32

```bash
hf download Kijai/WanVideo_comfy Wan2_1_VAE_fp32.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

## CLIP Vision

#### Standard

```bash
hf download Comfy-Org/Wan_2.1_ComfyUI_repackaged split_files/clip_vision/clip_vision_h.safetensors \
--local-dir /workspace/ComfyUI/models/clip_vision
``` 

## Loras Lightning lightx2v

### 1.0 Seko

```bash
hf download lightx2v/Wan2.2-Lightning Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1/high_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/

hf download lightx2v/Wan2.2-Lightning Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1/low_noise_model.safetensors  \
--local-dir /workspace/ComfyUI/models/loras/
```

#### Moe Distill

```bash
hf download lightx2v/Wan2.2-I2V-A14B-Moe-Distill-Lightx2v loras/high_noise_model_rank64.safetensors \
--local-dir /workspace/ComfyUI/models/loras/

hf download lightx2v/Wan2.2-I2V-A14B-Moe-Distill-Lightx2v loras/low_noise_model_rank64.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

```bash
hf download Kijai/WanVideo_comfy LoRAs/Wan22_Lightx2v/Wan_2_2_I2V_A14B_HIGH_lightx2v_MoE_distill_lora_rank_64_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```