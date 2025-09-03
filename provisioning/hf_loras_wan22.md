# Loras to use with original models

## lighttx2v

- [light2xtv](https://huggingface.co/lightx2v)
- [Kijai](https://huggingface.co/Kijai/WanVideo_comfy/tree/main/Wan22-Lightning)

### 1.0

```bash
hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1/low_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/

hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1/high_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### 1.1

```bash
hf download Kijai/WanVideo_comfy Wan22-Lightning/Wan2.2-Lightning_T2V-v1.1-A14B-4steps-lora_HIGH_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/

hf download Kijai/WanVideo_comfy Wan22-Lightning/Wan2.2-Lightning_T2V-v1.1-A14B-4steps-lora_LOW_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Pusa

- [Github](https://github.com/Yaofang-Liu/Pusa-VidGen)
- [Huggingface](https://huggingface.co/RaphaelLiu/Pusa-Wan2.2-V1)

### bf16

```bash
hf download Kijai/WanVideo_comfy Pusa/Wan22_PusaV1_lora_HIGH_resized_dynamic_avg_rank_98_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/

hf download Kijai/WanVideo_comfy Pusa/Wan22_PusaV1_lora_LOW_resized_dynamic_avg_rank_98_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Full (10 Gb)

```bash
hf download RaphaelLiu/Pusa-Wan2.2-V1 high_noise_pusa.safetensors --local-dir=/workspace/ComfyUI/models/loras

hf download RaphaelLiu/Pusa-Wan2.2-V1 low_noise_pusa.safetensors --local-dir=/workspace/ComfyUI/models/loras
```