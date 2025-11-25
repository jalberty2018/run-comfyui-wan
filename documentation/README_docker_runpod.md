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

- All available templates on runpod.io are tested on a L40S/A40.
- Try to avoid regions US-TX-4 as they often fail to download or run the image (Pytorch CUDA mismatch).
- Avoid using ID's without a region as they are not reliable.

### Runpod.io templates

[**👉 One-click Deploy on RunPod WAN 2.2 t2v (lightx2v)**](https://console.runpod.io/deploy?template=qvozvvb1xd&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 i2v (lightx2v)**](https://console.runpod.io/deploy?template=moem21s8xb&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 animate (lightx2v)**](https://console.runpod.io/deploy?template=tp7gj0khyo&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 lightx2v Dyno**](https://console.runpod.io/deploy?template=hcgfvldif0&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 v2v Lucy Edit**](https://console.runpod.io/deploy?template=kay3oq4rx7&ref=se4tkc5o)

### Workflows

- Open ComfyUI's interface on the left and select template.
- Download from [examples](https://awesome-comfyui.rozenlaan.site/ComfyUI_workflows/)

### Image specific tutorial

- [Tutorial](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN_tutorial/)

## Image documentation

- [Start](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN/)
