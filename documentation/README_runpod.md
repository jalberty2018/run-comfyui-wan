# Pod documentation

This project downloads models as specified in the **environment variables** set in the templates.  

- Models and loras are automatically downloaded based on the specified paths in the environment configuration.  
- Authentication credentials can be set via secrets for:  
  - **Code server** authentication (not possible to switch off) 
  - **Hugging Face** and **CivitAI** tokens for model access. 

### Recommended

| Component        | Recommended             |
|------------------|--------------------------|
| GPU              | L40S, RTX 6000 Ada  |
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

### Hugging Face Model Configuration

| Model Type        | Model                         | Safetensors/GGUF                               |
|-------------------|-------------------------------|-------------------------------------------| 
| Diffusion Model   | `HF_MODEL_DIFFUSION_MODELS[1-5]`          | `HF_MODEL_DIFFUSION_MODELS_FILENAME[1-5]`   |
| Checkpoints       | `HF_MODEL_CHECKPOINTS[1-5]`        | `HF_MODEL_CHECKPOINTS_FILENAME[1-5]`        |
| Text Encoders     | `HF_MODEL_TEXT_ENCODERS[1-5]` | `HF_MODEL_TEXT_ENCODERS_FILENAME[1-5]` |
| Clip Vision       | `HF_MODEL_CLIP_VISION[1-5]`        | `HF_MODEL_CLIP_VISION_FILENAME[1-5]` |
| Audio Encoders    | `HF_MODEL_AUDIO_ENCODERS[1-5]` | `HF_MODEL_AUDIO_ENCODERS_FILENAME[1-5]` |
| Model patches    | `HF_MODEL_PATCHES[1-5]` | `HF_MODEL_PATCHES_FILENAME[1-5]` |
| VAE               | `HF_MODEL_VAE[1-5]`                | `HF_MODEL_VAE_FILENAME[1-5]`                |
| Upscalers         | `HF_MODEL_UPSCALER[1-5]`      | `HF_MODEL_UPSCALER_PTH[1-5]`              |
| Loras          | `HF_MODEL_LORA[1-10]`          | `HF_MODEL_LORA_FILENAME[1-10]`          |


### **Diffusion Lora Setup CivitAI**  

| Model Type        | URL (download link)            |
|-------------------|--------------------------------|
| Loras civitai     | `CIVITAI_MODEL_LORA_URL[1-10]` |

## Connection options 

### Services

| Service         | Port          |
|-----------------|---------------| 
| **ComfyUI**     | `8188` (HTTP) |
| **Code Server** | `9000` (HTTP) |
| **SSH/SCP**     | `22`   (TCP)  |
 
## Example workflow

- Text to video workflow available in /workspace/ComfyUI/user/default/workflows
- Open workflow from ComfyUI's interface on the left.

## Software Repositories  

### Core  

- [ComfyUI](https://github.com/comfyanonymous/ComfyUI)  
- [Code Server](https://github.com/coder/code-server)  
- [HuggingFace cli](https://huggingface.co/docs/huggingface_hub/guides/cli)

### Custom Nodes ComfyUI 

#### Full list

- [awesome-comfyui](https://awesome-comfyui.rozenlaan.site)

#### Interface

- [rgthree](https://github.com/rgthree/rgthree-comfy)  
- [Login](https://github.com/liusida/ComfyUI-Login)  
- [Manager](https://github.com/ltdrdata/ComfyUI-Manager)
- [KJNodes](https://github.com/kijai/ComfyUI-KJNodes)  
- [GGUF](https://github.com/city96/ComfyUI-GGUF)
- [ComfyMath](https://github.com/evanspearman/ComfyMath.git)
- [Resolution master](https://github.com/Azornes/Comfyui-Resolution-Master.git)

#### Video

- [Video Helper Suite](https://github.com/kosinkadink/ComfyUI-VideoHelperSuite)
- [Frame Interpolation](https://github.com/Fannovel16/ComfyUI-Frame-Interpolation)
- [VideoUpscale with Model](https://github.com/ShmuelRonen/ComfyUI-VideoUpscale_WithModel)
- [vrgamedevgirl](https://github.com/vrgamegirl19/comfyui-vrgamedevgirl)
- [White rabbit](https://github.com/Artificial-Sweetener/comfyui-WhiteRabbit)

#### Wan

- [Wrapper](https://github.com/kijai/ComfyUI-WanVideoWrapper)
- [StartEndFrame](https://github.com/Flow-two/ComfyUI-WanStartEndFramesNative)
- [SuperUltimateVaceTools](https://github.com/bbaudio-2025/ComfyUI-SuperUltimateVaceTools)

#### Inference

- [RES4LYF](https://github.com/ClownsharkBatwing/RES4LYF)
- [Noise](https://github.com/BlenderNeko/ComfyUI_Noise)
- [NAG](https://github.com/ChenDarYen/ComfyUI-NAG)
- [WanMoeKSampler](https://github.com/stduhpf/ComfyUI-WanMoeKSampler)
- [SD Upscale](https://github.com/ssitu/ComfyUI_UltimateSDUpscale)
- [Was affine](https://github.com/WASasquatch/was_affine)
