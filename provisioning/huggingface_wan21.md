# Manual provisioning WAN 2.1

- [Kijai](https://huggingface.co/Kijai/WanVideo_comfy/tree/main)

## Diffusion_models fp16

### t2v t2i

#### Original

```bash
huggingface-cli download  Comfy-Org/Wan_2.1_ComfyUI_repackaged split_files/diffusion_models/wan2.1_t2v_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

#### Checkpoint with specific loras

```bash
huggingface-cli download vrgamedevgirl84/Wan14BT2VFusioniX Wan14BT2VFusioniX_fp16_.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### i2v

```bash
huggingface-cli download Comfy-Org/Wan_2.1_ComfyUI_repackaged split_files/diffusion_models/wan2.1_i2v_720p_14B_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### VACE

```bash
huggingface-cli download Comfy-Org/Wan_2.1_ComfyUI_repackaged split_files/diffusion_models/wan2.1_vace_14B_fp16.safetensors --local-dir /workspace/ComfyUI/models/diffusion_models/
```

### SkyReels t2v t2i

```bash
huggingface-cli download Kijai/WanVideo_comfy Skyreels/Wan2_1-SkyReels-V2-DF-14B-720P_fp16.safetensors \
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

## CLIP Vision encoders

```bash
huggingface-cli download Comfy-Org/Wan_2.1_ComfyUI_repackaged split_files/clip_vision/clip_vision_h.safetensors \
--local-dir /workspace/ComfyUI/models/clip_vision/
```

```bash
huggingface-cli download Kijai/WanVideo_comfy open-clip-xlm-roberta-large-vit-huge-14_visual_fp32.safetensors \
--local-dir /workspace/ComfyUI/models/clip_vision/
```

## Vae

```bash
huggingface-cli download Comfy-Org/Wan_2.1_ComfyUI_repackaged split_files/vae/wan_2.1_vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

## Upscale_models copied to LS110824

```bash
huggingface-cli download LS110824/upscale RealESRGAN_x2plus.pth \
--local-dir /workspace/ComfyUI/models/upscale_models/

huggingface-cli download LS110824/upscale 4x_foolhardy_Remacri.pth \
--local-dir /workspace/ComfyUI/models/upscale_models/
```

## Loras to use with original model

- [alibaba-pai](https://huggingface.co/collections/alibaba-pai/wan21-fun-67e4fb3b76ca01241eb7e334)

### CausVid

```bash
huggingface-cli download Kijai/WanVideo_comfy Wan21_CausVid_14B_T2V_lora_rank32_v2.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### AccVid

```bash
huggingface-cli download Kijai/WanVideo_comfy Wan21_AccVid_T2V_14B_lora_rank32_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

###  MoviiGen

```bash
huggingface-cli download Kijai/WanVideo_comfy Wan21_T2V_14B_MoviiGen_lora_rank32_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```  

###  MPS reward

```bash
huggingface-cli download alibaba-pai/Wan2.1-Fun-Reward-LoRAs Wan2.1-Fun-14B-InP-MPS.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### lightx2v

```bash
huggingface-cli download Kijai/WanVideo_comfy Wan21_T2V_14B_lightx2v_cfg_step_distill_lora_rank32.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### DetailEnhacer

#### Original

```bash
huggingface-cli download vrgamedevgirl84/Wan14BT2VFusioniX "OtherLoRa's/DetailEnhancerV1.safetensors" \
--local-dir /workspace/ComfyUI/models/loras/
```

#### Alternative

```bash
huggingface-cli download LS110824/Wan21_lora DetailEnhancerV1.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Realismboost

#### Original

```bash
huggingface-cli download vrgamedevgirl84/Wan14BT2VFusioniX "OtherLoRa's/Wan14B_RealismBoost.safetensors" \
--local-dir /workspace/ComfyUI/models/loras/
```

#### Alternative

```bash
huggingface-cli download LS110824/Wan21_lora Wan14B_RealismBoost_T2V.safetensors --local-dir /wor
kspace/ComfyUI/models/loras/
```

### High speed dynamics

```bash
huggingface-cli download LS110824/Wan21_lora HighSpeedDynamics.safetensors --local-dir /wor
kspace/ComfyUI/models/loras/
```