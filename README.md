[![Docker Image Version](https://img.shields.io/docker/v/ls250824/run-comfyui-wan)](https://hub.docker.com/r/ls250824/run-comfyui-wan)

# 🚀 Run WAN 2.x on ComfyUI with Custom Nodes — [RunPod.io Deployment](https://runpod.io?ref=se4tkc5o)

A streamlined and automated environment for running **ComfyUI** with **WAN 2.x video models**, optimized for use on [RunPod.io](https://runpod.io?ref=se4tkc5o).

## 🔧 Features

- Automatic model and LoRA downloads via environment variables.
- Built-in **authentication** for:
  - Code Server (required)
  - Hugging Face API
  - CivitAI API
- Supports advanced workflows for **video generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs.

## 📦 Template Deployment

👉 **One-click Deploy on RunPod**  
[**Deploy Now**](https://console.runpod.io/deploy?template=qvozvvb1xd&ref=se4tkc5o)

> ✅ Be sure to configure environment variables and secrets appropriately (see below).

## 💻 Hardware Requirements

### Example

![Pod running on runpod.io](images/runpod-pod.jpg)


### Recommended

| Component        | Recommended             |
|------------------|--------------------------|
| GPU              | L40S, L40, RTX 6000 Ada  |
| Volume Storage   | 80GB (`/workspace`)      |
| Pod Storage      | 15GB                     |


## 🐳 Docker Images

### Base Images

- **PyTorch Runtime**  
  [![Docker](https://img.shields.io/docker/v/ls250824/pytorch-cuda-ubuntu-runtime)](https://hub.docker.com/r/ls250824/pytorch-cuda-ubuntu-runtime)

- **ComfyUI Runtime**  
  [![Docker](https://img.shields.io/docker/v/ls250824/comfyui-runtime)](https://hub.docker.com/r/ls250824/comfyui-runtime)

### Main Image

```bash
docker pull ls250824/run-comfyui-wan:<version>
```

## ⚙️ Environment Variables

### ComfyUI Configuration

| Variable                   | Description                    |
|----------------------------|--------------------------------|
| `COMFYUI_EXTRA_ARGUMENTS`  | Additional arguments for ComfyUI CLI |


### Authentication Tokens

| Token Source   | Variable         | Required |
|----------------|------------------|----------|
| Code Server    | `PASSWORD`       | ✅ Yes   |
| Hugging Face   | `HF_TOKEN`       | Optional |
| CivitAI        | `CIVITAI_TOKEN`  | Optional |

### 🧠 Hugging Face Model Configuration

| Type             | Variable                                |
|------------------|------------------------------------------|
| Diffusion        | `HF_MODEL_DIFFUSION_MODELS[1-2]`, `HF_MODEL_DIFFUSION_MODELS_FILENAME[1-2]` |
| Checkpoints      | `HF_MODEL_CHECKPOINTS`, `HF_MODEL_CHECKPOINTS_FILENAME` |
| Text Encoders    | `HF_MODEL_TEXT_ENCODERS[1-2]`, `HF_MODEL_TEXT_ENCODERS_FILENAME[1-2]` |
| CLIP Vision      | `HF_MODEL_CLIP_VISION`, `HF_MODEL_CLIP_VISION_FILENAME` |
| VAE              | `HF_MODEL_VAE`, `HF_MODEL_VAE_FILENAME` |
| Upscalers        | `HF_MODEL_UPSCALER[1-2]`, `HF_MODEL_UPSCALER_PTH[1-2]` |
| LORAs            | `HF_MODEL_LORA[1-10]`, `HF_MODEL_LORA_FILENAME[1-10]` |

### 🎨 CivitAI LORAs

| Variable                          | Description                      |
|----------------------------------|----------------------------------|
| `CIVITAI_MODEL_LORA_URL[1-10]`   | Direct download links for LoRAs |


## 🌐 Network Services

| Service       | Port   | Access Type |
|---------------|--------|-------------|
| ComfyUI       | `8188` | Web         |
| Code Server   | `9000` | Web         |
| SSH/SCP       | `22`   | Terminal    |

## 📚 Tutorials & Resources

- [WAN Video Homepage](https://wan.video/)
- [ComfyUI 2.1](https://comfyanonymous.github.io/ComfyUI_examples/wan/)
- [ComfyUI 2.2](https://comfyanonymous.github.io/ComfyUI_examples/wan22/)
- [Enhance a Video](https://oahzxl.github.io/Enhance_A_Video/)
- [AccVideo](https://github.com/aejion/AccVideo)
- [CausVid](https://github.com/tianweiy/CausVid)
- [NAG](https://chendaryen.github.io/NAG.github.io/)
- [FusionX LoRA](https://civitai.com/models/1681541?modelVersionId=1903277)
- [light2xtv](https://huggingface.co/lightx2v)

## 🧪 Workflows

![Preloaded workflow for Wan 2.2](images/runpod-comfyui-workflow.jpg)
Open ComfyUI (port `8188`) and load workflows from the left menu.

## 🧩 Pre-Installed Custom Nodes

- [rgthree](https://github.com/rgthree/rgthree-comfy)  
- [Login](https://github.com/liusida/ComfyUI-Login)  
- [Manager](https://github.com/ltdrdata/ComfyUI-Manager)  
- [Video Helper Suite](https://github.com/kosinkadink/ComfyUI-VideoHelperSuite)
- [KJNodes](https://github.com/kijai/ComfyUI-KJNodes)  
- [Frame Interpolation](https://github.com/Fannovel16/ComfyUI-Frame-Interpolation)
- [TeaCache](https://github.com/welltop-cn/ComfyUI-TeaCache)
- [Wrapper](https://github.com/kijai/ComfyUI-WanVideoWrapper)
- [StartEndFrame](https://github.com/Flow-two/ComfyUI-WanStartEndFramesNative)
- [VideoUpscale with Model](https://github.com/ShmuelRonen/ComfyUI-VideoUpscale_WithModel)
- [RES4LYF](https://github.com/ClownsharkBatwing/RES4LYF)
- [Noise](https://github.com/BlenderNeko/ComfyUI_Noise)
- [NAG](https://github.com/ChenDarYen/ComfyUI-NAG)
- [vrgamedevgirl](https://github.com/vrgamegirl19/comfyui-vrgamedevgirl)
- [SuperUltimateVaceTools](https://github.com/bbaudio-2025/ComfyUI-SuperUltimateVaceTools)
- [GGUF](https://github.com/city96/ComfyUI-GGUF)
- [WanMoeKSampler](https://github.com/stduhpf/ComfyUI-WanMoeKSampler)
- [ComfyMath](https://github.com/evanspearman/ComfyMath.git)

## 🧩 All possible Custom Nodes

- [Full List](https://awesome-comfyui.rozenlaan.site)

## 📦 Model Sources

| Source         | URL |
|----------------|-----|
| Wan-Video      | [GitHub](https://github.com/Wan-Video) |
| Wan-AI         | [HuggingFace](https://huggingface.co/Wan-AI) |
| FusionX        | [HuggingFace](https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX) |
| MoviiGen       | [HuggingFace](https://huggingface.co/ZuluVision/MoviiGen1.1) |
| VACE           | [GitHub](https://github.com/ali-vilab/VACE) |

## 📦 Manual setup guides:

- [WAN 2.1](provisioning/huggingface_wan21.md)
- [WAN 2.2](provisioning/huggingface_wan22.md)
- [Upscale](provisioning/huggingface_upscale.md)
- [Loras](provisioning/huggingface_loras.md)

## 🛠️ Build & Push Docker Image (Optional)

This is **not supported directly on RunPod.io**. Use local hardware to build the image using the included Python script.

### Build Script: `build-docker.py`

| Argument       | Description                        | Default          |
|----------------|------------------------------------|------------------|
| `--username`   | Your Docker Hub username           | Current user     |
| `--tag`        | Custom image tag                   | Today's date     |
| `--latest`     | Also tag image as `latest`         | Disabled         |

### Example Usage

```bash
git clone https://github.com/jalberty2018/run-comfyui-wan.git
cp run-comfyui-wan/build-docker.py ..

python3 build-docker.py   --username=<your_dockerhub_username>   --tag=<custom_tag>   --latest   run-comfyui-wan
```