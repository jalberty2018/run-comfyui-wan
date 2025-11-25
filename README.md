# 🚀 Run WAN 2.x with ComfyUI with provisioning — [RunPod.io Deployment](https://runpod.io?ref=se4tkc5o)

[![Docker Image Version](https://img.shields.io/docker/v/ls250824/run-comfyui-wan)](https://hub.docker.com/r/ls250824/run-comfyui-wan)

![Pod running on L40S native comfyUI](images/runpod.jpg)

A streamlined and automated environment for running **ComfyUI** with **WAN 2.x video models**, optimized for use on [RunPod.io](https://runpod.io?ref=se4tkc5o).

## 🔧 Features

- Automatic model and LoRA downloads via environment variables.
- Built-in **authentication** for:
  - ComfyUI
  - Code Server
  - Hugging Face API
  - CivitAI API
- Supports advanced workflows for **video generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs.

## 🧩 Template Deployment

### Deployment.

- All available templates on runpod are tested on a L40S/A40.
- Try to avoid regions US-TX-x as they often fail to download or run the image (Pytorch CUDA mismatch).

### Runpod templates

[**👉 One-click Deploy on RunPod WAN 2.2 t2v (lightx2v)**](https://console.runpod.io/deploy?template=qvozvvb1xd&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 i2v (lightx2v)**](https://console.runpod.io/deploy?template=moem21s8xb&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 animate (lightx2v)**](https://console.runpod.io/deploy?template=tp7gj0khyo&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 lightx2v Dyno**](https://console.runpod.io/deploy?template=hcgfvldif0&ref=se4tkc5o)

[**👉 One-click Deploy on RunPod WAN 2.2 v2v Lucy Edit**](https://console.runpod.io/deploy?template=kay3oq4rx7&ref=se4tkc5o)

## Tutorial

- [Specific for these templates](https://awesome-comfyui.rozenlaan.site/ComfyUI_WAN_tutorial.md)

### Workflows

- Open from ComfyUI's interface on the left
- View/Download from [Workflow examples](https://awesome-comfyui.rozenlaan.site/ComfyUI_workflows/)

![Included t2v wrapper as easy example to work on A40/L40S](images/ai-generated.jpg)

## 🐳 Docker Images

### Base Images

- **PyTorch Runtime**  [![Docker](https://img.shields.io/docker/v/ls250824/pytorch-cuda-ubuntu-runtime)](https://hub.docker.com/r/ls250824/pytorch-cuda-ubuntu-runtime)

- **ComfyUI Runtime**  [![Docker](https://img.shields.io/docker/v/ls250824/comfyui-runtime)](https://hub.docker.com/r/ls250824/comfyui-runtime)

### Custom Image

```bash
docker pull ls250824/run-comfyui-wan:<version>
```

## 📚 Documentation

- [💻 Hardware Requirements](docs/ComfyUI_WAN_hardware.md)
- [🧩 Pre-Installed Custom Nodes](docs/ComfyUI_WAN_custom_nodes.md)
- [📚 Resources](docs/ComfyUI_WAN_resources.md)
- [📦 Model provisioning](docs/ComfyUI_WAN_provisioning.md)
- [⚙️ Image setup](docs/ComfyUI_WAN_image_setup.md)
- [⚙️ Environment variables](docs/ComfyUI_WAN_configuration.md)

## 🛠️ Build & Push Docker Image (Optional)

Use none docker setup to build the image using the included Python script.

### Build Script: `build-docker.py`

| Argument       | Description                        | Default          |
|----------------|------------------------------------|------------------|
| `--username`   | Your Docker Hub username           | Current user     |
| `--tag`        | Custom image tag                   | Today's date     |
| `--latest`     | Also tag image as `latest`         | Disabled         |

### Example Usage

```bash
git clone https://github.com/jalberty2018/run-comfyui-wan.git
cp ./run-comfyui-wan/build-docker.py ..

export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

python3 build-docker.py   --username=<your_dockerhub_username>   --tag=<custom_tag>   --latest   run-comfyui-wan
```