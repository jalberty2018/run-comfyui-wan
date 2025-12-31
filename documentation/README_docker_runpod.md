# Run WAN 2.x with ComfyUI with provisioning

## Features

- Automatic model and LoRA downloads via environment variables.
- Supports advanced workflows for **video generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs (CUDA 12.8).
- Compiled attentions and GPU accelerations.

## Built-in **authentication**
  
- ComfyUI
- Code Server
- HuggingFace API
- CivitAI API

## Images on Docker 

- If the image is **less then one day old** it is possible that it is not tested or will be updated.

## Template Deployment

### Deployment/Usage information

- All available templates on runpod are tested on a L40S /RTX A6000 (Ada) / A40.
- Avoid regions **US-TX-4** — they often fail to download or run the image (PyTorch CUDA errors).

### Runpod.io templates

[**👉 One-click Deploy on RunPod WAN 2.2 t2v (lightx2v)**](https://console.runpod.io/deploy?template=qvozvvb1xd&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 i2v + longvideo (lightx2v)**](https://console.runpod.io/deploy?template=moem21s8xb&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 animate (lightx2v)**](https://console.runpod.io/deploy?template=tp7gj0khyo&ref=se4tkc5o)

[**👉 One-click Deploy on Runpod WAN SCAIL VI2V (lightx2v)**](https://console.runpod.io/deploy?template=9i0lkwau54&ref=se4tkc5o)

## Documentation

- [Start](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN/)
- [Tutorial](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN_tutorial/)
- [Workflows](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN_workflows/)

##  Hardware Requirements

### T2V-A14B or I2V-A14B (high/low) 

#### **Recommended GPU**

- precision fp16
- video settings 1024x768 122 frames

| GPU          | VRAM  | RAM ComfyUI-Native/ComfyUI-WanVideoWrapper |
|--------------------------|-------|-------------------------|
| L40S, RTX 6000 Ada        | 45Gb | 90Gb/50Gb           |

#### Possible GPU with limitations due to available ram on rupod.io

- precision fp16
- video settings 1024x768 97 frames (ComfyUI-WanVideoWrapper Offload 10)
- only possible with worflows based on ComfyUI-WanVideoWrapper

| GPU       | VRAM  | RAM ComfyUI-WanVideoWrapper |
|--------------------------|-------|--------------|
| A40, RTX 6000 | 45Gb | 45Gb |

### Animate

- precision fp16
- video settings 1024x768 77 chunks/Sampler

| Recommended GPU          | VRAM  | RAM   |
|--------------------------|-------|-------|
| L40S, RTX 6000 Ada       | 40Gb | 105Gb | 

### SCAIL

- precision fp16
- Depends on length and size of video.

| Recommended GPU          | VRAM  | RAM   |
|--------------------------|-------|-------|
| L40S, RTX 6000 (Ada)     | 40Gb | 105Gb | 


