# Run WAN 2.x with ComfyUI with provisioning

## Features

- Automatic model and LoRA downloads via environment variables.
- Supports advanced workflows for **video generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs.

## Built-in **authentication**
  
- ComfyUI
- Code Server
- Hugging Face API
- CivitAI API

## Images on Docker 

- If the image is **less then one day old** it is possible that it is not tested or will be updated.

## Template Deployment

### Deployment/Usage information

- All available templates on runpod.io are tested on a L40S/A40.
- Try to avoid regions US-TX-x as they often fail to download or run the image (Pytorch CUDA mismatch).
- [Tutorial for deployment](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN_deployment/)

### Runpod.io templates

[**👉 One-click Deploy on RunPod WAN 2.2 t2v (lightx2v)**](https://console.runpod.io/deploy?template=qvozvvb1xd&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 i2v (lightx2v)**](https://console.runpod.io/deploy?template=moem21s8xb&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 animate (lightx2v)**](https://console.runpod.io/deploy?template=tp7gj0khyo&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 lightx2v Dyno**](https://console.runpod.io/deploy?template=hcgfvldif0&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 v2v Lucy Edit**](https://console.runpod.io/deploy?template=kay3oq4rx7&ref=se4tkc5o)

### Workflows

- Open from ComfyUI's interface on the left
- Download from [examples](https://awesome-comfyui.rozenlaan.site/ComfyUI_workflows/)

## Full documentation

- [Configurations](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN/)
- [Installed custom nodes](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN_custom_nodes/)

## Hardware Requirements

### T2V-A14B or I2V-A14B (high/low) 

#### **Recommended GPU**

- precision fp16
- video settings 1024x768 122 frames (ComfyUI-WanVideoWrapper offload 10)

| GPU          | VRAM  | RAM ComfyUI-Native/ComfyUI-WanVideoWrapper |
|--------------------------|-------|-------------------------|
| L40S, RTX 6000 Ada, L40       | 45Gb | 90Gb/50Gb           |

#### Possible GPU with limitations due to available ram on rupod.io

- precision fp16
- video settings 1024x768 80 frames (ComfyUI-WanVideoWrapper offload 10)
- Only possible with worflows based on ComfyUI-WanVideoWrapper (included in pod)

| GPU       | VRAM  | RAM ComfyUI-WanVideoWrapper |
|--------------------------|-------|--------------|
| A40       | 45Gb | 45Gb |

### Animate

- precision fp16
- video settings 1024x768 77 chunks/Sampler

| Recommended GPU          | VRAM  | RAM   |
|--------------------------|-------|-------|
| L40S, RTX 6000 Ada, L40  | 40Gb | 105Gb | 

### Storage

| Component        | Minimum                  |
|------------------|--------------------------|
| Volume Storage   | 90Gb (`/workspace`)      |
| Pod Storage      | 15Gb                     |

### **ComfyUI Arguments**  

| Token        | Environment Variable     |
|--------------|--------------------------|
| Arguments    | `COMFYUI_EXTRA_ARGUMENTS`|

### **Authentication Tokens**  

| Token        | Environment Variable |
|--------------|----------------------|
| Civitai      | `CIVITAI_TOKEN`      |
| Huggingface  | `HF_TOKEN`           |
| Code Server  | `PASSWORD`           |
