# Manual provisioning WAN 2.2

- [Wan-Video Github](https://github.com/Wan-Video)
- [Wan-AI Huggingface](https://huggingface.co/Wan-AI)

## Diffusion_models

### t2v fp16

#### High noise

```bash
huggingface-cli download  Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_t2v_high_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

#### Low noise

```bash
huggingface-cli download  Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### t2v fp8

#### High noise

```bash
huggingface-cli download  Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/split_files/diffusion_models/wan2.2_t2v_high_noise_14B_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

#### Low noise

```bash
huggingface-cli download  Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_t2v_low_noise_14B_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### i2v fp16

#### Heigh noise

```bash
huggingface-cli download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_i2v_high_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

#### Low noise

```bash
huggingface-cli download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_i2v_low_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### i2v fp8

#### Heigh noise

```bash
huggingface-cli download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_i2v_high_noise_14B_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

#### Low noise

```bash
huggingface-cli download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_i2v_low_noise_14B_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## CLIP Text encoder

### fp32

```bash
huggingface-cli download LS110824/text_encoders wan21UMT5XxlFP32_fp32.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp16

```bash
huggingface-cli download Comfy-Org/Wan_2.1_ComfyUI_repackaged split_files/text_encoders/umt5_xxl_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp8

```bash
huggingface-cli download Comfy-Org/Wan_2.1_ComfyUI_repackaged split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

### Standard

```bash
huggingface-cli download Comfy-Org/Wan_2.1_ComfyUI_repackaged split_files/vae/wan_2.1_vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### fp32

```bash
huggingface-cli download Kijai/WanVideo_comfy Wan2_1_VAE_fp32.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

