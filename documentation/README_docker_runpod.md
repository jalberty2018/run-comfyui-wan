# Run WAN 2.x with ComfyUI with provisioning

## Features

- Automatic model and LoRA downloads via environment variables.
- Built-in **authentication** for:
  - Code Server (required)
  - Hugging Face API
  - CivitAI API
- Supports advanced workflows for **video generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs.

## Template Deployment

[**👉 One-click Deploy on RunPod WAN 2.2**](https://console.runpod.io/deploy?template=qvozvvb1xd&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 animate lightx2v**](https://console.runpod.io/deploy?template=tp7gj0khyo&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 lightx2v Dyno**](https://console.runpod.io/deploy?template=hcgfvldif0&ref=se4tkc5o)

- Example workflows using available custom nodes in /workspace/ComfyUI/user/default/workflows
- Open workflow from ComfyUI's interface on the left.

## Hardware Requirements

### T2V-A14B high/low model (fp16) 1024x768x122

#### GPU

| Recommended              | VRAM  | RAM   |
|--------------------------|-------|-------|
| L40S, RTX 6000 Ada, A40  | 40 GB | 90GB  | 

##### Storage

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


 