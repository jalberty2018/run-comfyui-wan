# Manual provisioning WAN 2.2 t2v

- [ComfyUI](https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged)
- [Wan-AI](https://huggingface.co/Wan-AI)
- [GGUF](https://huggingface.co/QuantStack)
- [Kijai](https://huggingface.co/Kijai/WanVideo_comfy)
- [Lightning lightx2v](https://huggingface.co/lightx2v)
- [NSFW](https://huggingface.co/NSFW-API)

## Diffusion_models

### Standard fp16

```bash
hf download  Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/

hf download  Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_t2v_high_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### Lighting Dyno High

```bash 
hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-250928-dyno/Wan2.2-T2V-A14B-4steps-250928-dyno-high-lightx2v.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## CLIP Text encoder

### fp32

```bash
hf download LS110824/text_encoders wan21UMT5XxlFP32_fp32.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp16

#### standard

```bash
hf download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/text_encoders/umt5_xxl_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

#### nsfw

```bash
hf download NSFW-API/NSFW-Wan-UMT5-XXL nsfw_wan_umt5-xxl_bf16.safetensors \
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

## Loras Lightning lightx2v

### 1.0 Seko

```bash
hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1/low_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/

hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1/high_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### 1.1 Seko

```bash
hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1.1/high_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/

hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1.1/low_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### 250928

```bash
hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-lora-250928/high_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/

hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-lora-250928/low_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```