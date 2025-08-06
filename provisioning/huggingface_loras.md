## Loras to use with original models

- [light2xtv](https://huggingface.co/lightx2v)

### FusionX t2v

```bash
hf download vrgamedevgirl84/Wan14BT2VFusioniX FusionX_LoRa/Wan2.1_T2V_14B_FusionX_LoRA.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### FusionX i2v

```bash
hf download vrgamedevgirl84/Wan14BT2VFusioniX FusionX_LoRa/Wan2.1_I2V_14B_FusionX_LoRA.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Phantom FusionX

```bash
hf download vrgamedevgirl84/Wan14BT2VFusioniX FusionX_LoRa/Phantom_Wan_14B_FusionX_LoRA.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### CausVid

```bash
hf download Kijai/WanVideo_comfy Wan21_CausVid_14B_T2V_lora_rank32_v2.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### AccVid

```bash
hf download Kijai/WanVideo_comfy Wan21_AccVid_T2V_14B_lora_rank32_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

###  MoviiGen

```bash
hf download Kijai/WanVideo_comfy Wan21_T2V_14B_MoviiGen_lora_rank32_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```  

###  MPS reward

```bash
hf download alibaba-pai/Wan2.1-Fun-Reward-LoRAs Wan2.1-Fun-14B-InP-MPS.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### lightx2v WAN 2.1

```bash
hf download Kijai/WanVideo_comfy Wan21_T2V_14B_lightx2v_cfg_step_distill_lora_rank32.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### lightx2v WAN 2.2

```bash
hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1/low_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/

hf download lightx2v/Wan2.2-Lightning Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1/high_noise_model.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### DetailEnhacer

```bash
hf download LS110824/Wan21_lora DetailEnhancerV1.safetensors --local-dir /workspace/ComfyUI/models/loras/
```

### Realismboost

```bash
hf download LS110824/Wan21_lora Wan14B_RealismBoost_T2V.safetensors --local-dir /workspace/ComfyUI/models/loras/
```

### High speed dynamics

```bash
hf download LS110824/Wan21_lora HighSpeedDynamics.safetensors --local-dir /workspace/ComfyUI/models/loras/
```

### FusionX FaceNaturalizer

```bash
hf download LS110824/Wan21_lora Wan21_lora FusionX_FaceNaturalizer.safetensors --local-dir /workspace/ComfyUI/models/loras/
```