# Manual provisioning WAN 2.2

- [ComfyUI Huggingface](https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/tree/main/split_files)
- [Wan-AI Huggingface](https://huggingface.co/Wan-AI)
- [GGUF](https://huggingface.co/QuantStack)

## Diffusion_models

### t2v fp16

#### Low noise

```bash
hf download  Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

#### High noise

```bash
hf download  Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_t2v_high_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### i2v fp16

#### Low noise

```bash
hf download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_i2v_low_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

#### High noise

```bash
hf download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_i2v_high_noise_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### s2v bf16

```bash
hf download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/diffusion_models/wan2.2_s2v_14B_bf16.safetensors \
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

## CLIP Audio encoders

```bash
hf download Comfy-Org/Wan_2.2_ComfyUI_Repackaged split_files/audio_encoders/wav2vec2_large_english_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/audio_encoders/
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



