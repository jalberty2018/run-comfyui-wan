# Pod documentation

## Workflows & Tutorials  

- [wan-video](https://wan.video/)
- [ComfyUI 2.1](https://comfyanonymous.github.io/ComfyUI_examples/wan/)
- [ComfyUI 2.2](https://comfyanonymous.github.io/ComfyUI_examples/wan22/)
- [Wiki 2.1](https://comfyui-wiki.com/en/tutorial/advanced/wan21-video-model)
- [Enhance a Video](https://oahzxl.github.io/Enhance_A_Video/)  
- [AccVideo](https://github.com/aejion/AccVideo)
- [CausVid](https://github.com/tianweiy/CausVid)
- [NAG](https://chendaryen.github.io/NAG.github.io/)
- [vace](https://docs.comfy.org/tutorials/video/wan/vace)
- [Phantom](https://github.com/Phantom-video/Phantom)
- [FusionX Lora](https://civitai.com/models/1681541?modelVersionId=1903277)

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

#### Installed

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
- [controlnet_aux](https://github.com/Fannovel16/comfyui_controlnet_aux)
- [SuperUltimateVaceTools](https://github.com/bbaudio-2025/ComfyUI-SuperUltimateVaceTools)

## Models

### Sources  

- [Wan-Video Github](https://github.com/Wan-Video)
- [Wan-AI Huggingface](https://huggingface.co/Wan-AI)  
- [WAN-VACE Github](https://github.com/ali-vilab/VACE)
- [FusionX Huggingface](https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX)
- [MoviiGen Huggingface](https://huggingface.co/ZuluVision/MoviiGen1.1)
- [Fun](https://huggingface.co/collections/alibaba-pai/wan21-fun-v11-680f514c89fe7b4df9d44f17)
- [alibaba-pai](https://huggingface.co/collections/alibaba-pai/wan21-fun-67e4fb3b76ca01241eb7e334)
- [Kijai](https://huggingface.co/Kijai/WanVideo_comfy)

### Manual provisioning

- [Wan2.1](provisioning/huggingface_wan21.md)
- [Wan2.2](provisioning/huggingface_wan22.md)
- [upscale](provisioning/huggingface_upscale.md)
- [loras](provisioning/huggingface_loras.md)

#### **Huggingface**  

```bash
hf download model model_name.safetensors --local-dir /workspace/ComfyUI/models/diffusion_models/
hf upload model /workspace/model.safetensors
```

#### **CivitAI**  

```bash
civitai "<download link>" /workspace/ComfyUI/models/diffusion_models
civitai "<download link>" /workspace/ComfyUI/models/loras
```
## 7z Compression  

### **Encrypt & Archive Output**  

```bash
7z a -p -mhe=on /workspace/output/output-wan-x.7z /workspace/ComfyUI/output/
```

### **Extract Archive**  

```bash
7z x x.7z
```

### **Clean up**  

```bash
rm -rf /workspace/output/ /workspace/input/ /workspace/ComfyUI/output/ /workspace/ComfyUI/models/
```

## Utilities  

```bash
nvtop   # GPU Monitoring  
htop    # Process Monitoring  
mc      # Midnight Commander  
nano    # Text Editor  
```
