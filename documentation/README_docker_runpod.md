# Run WAN 2.x with ComfyUI with provisioning

## Features

- Automatic model and LoRA downloads via environment variables.
- Built-in **authentication** for:
  - ComfyUI
  - Code Server
  - Hugging Face API
  - CivitAI API

- Supports advanced workflows for **video generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs.

## Template Deployment

[**👉 One-click Deploy on RunPod WAN 2.2**](https://console.runpod.io/deploy?template=qvozvvb1xd&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 animate lightx2v**](https://console.runpod.io/deploy?template=tp7gj0khyo&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 lightx2v Dyno**](https://console.runpod.io/deploy?template=hcgfvldif0&ref=se4tkc5o)

### Workflows

- Open from ComfyUI's interface on the left
- View/Download from [Workflow examples](https://awesome-comfyui.rozenlaan.site/ComfyUI_workflows/)

## Hardware Requirements

### T2V-A14B high/low model 

- precision fp16
- video settings 1024x768 122 frames

| Recommended GPU          | VRAM  | RAM   |
|--------------------------|-------|-------|
| L40S, RTX 6000 Ada       | 40 GB | 90GB  | 

### Animate

- precision fp16
- video settings 1024x768 77 chunks/Sampler

| Recommended GPU          | VRAM  | RAM   |
|--------------------------|-------|-------|
| L40S, RTX 6000 Ada       | 40 GB | 105GB | 

### Storage

| Component        | Minimum                  |
|------------------|--------------------------|
| Volume Storage   | 90GB (`/workspace`)      |
| Pod Storage      | 15GB                     |

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

## Configuration options and included custom nodes

- [ComfyUI WAN 2.x](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN/)


 