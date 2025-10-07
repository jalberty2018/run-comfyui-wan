# syntax=docker/dockerfile:1.7
FROM ls250824/comfyui-runtime:07102025

# Set Working Directory
WORKDIR /

# Copy Scripts and documentation
COPY --chmod=755 start.sh onworkspace/comfyui-on-workspace.sh onworkspace/provisioning-on-workspace.sh onworkspace/readme-on-workspace.sh / 
COPY --chmod=644 provisioning/ /provisioning
COPY --chmod=664 /documentation/README.md /README.md

# Copy ComfyUI configurations
COPY --chmod=644 configuration/config.ini /ComfyUI/user/default/ComfyUI-Manager/config.ini
COPY --chmod=644 configuration/comfy.settings.json /ComfyUI/user/default/comfy.settings.json

# Install Required Packages
RUN --mount=type=cache,target=/root/.cache/git \
    mkdir -p /ComfyUI/custom_nodes && \
    cd /ComfyUI/custom_nodes && \
    git clone --depth=1 --filter=blob:none https://github.com/ltdrdata/ComfyUI-Manager.git && \
    git clone --depth=1 --filter=blob:none https://github.com/rgthree/rgthree-comfy.git && \
    git clone --depth=1 --filter=blob:none https://github.com/liusida/ComfyUI-Login.git && \
    git clone --depth=1 --filter=blob:none https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git && \
    git clone --depth=1 --filter=blob:none https://github.com/kijai/ComfyUI-KJNodes.git && \
    git clone --depth=1 --filter=blob:none https://github.com/Fannovel16/ComfyUI-Frame-Interpolation.git && \
	git clone --depth=1 --filter=blob:none https://github.com/kijai/ComfyUI-WanVideoWrapper.git && \
	git clone --depth=1 --filter=blob:none https://github.com/Flow-two/ComfyUI-WanStartEndFramesNative.git && \
	git clone --depth=1 --filter=blob:none https://github.com/ShmuelRonen/ComfyUI-VideoUpscale_WithModel && \
	git clone --depth=1 --filter=blob:none https://github.com/ClownsharkBatwing/RES4LYF.git && \
	git clone --depth=1 --filter=blob:none https://github.com/BlenderNeko/ComfyUI_Noise.git && \
	git clone --depth=1 --filter=blob:none https://github.com/ChenDarYen/ComfyUI-NAG.git && \
	git clone --depth=1 --filter=blob:none https://github.com/evanspearman/ComfyMath.git && \
	git clone --depth=1 --filter=blob:none https://github.com/city96/ComfyUI-GGUF.git && \
	git clone --depth=1 --filter=blob:none https://github.com/stduhpf/ComfyUI-WanMoeKSampler.git && \
    git clone --depth=1 --filter=blob:none https://github.com/Azornes/Comfyui-Resolution-Master.git && \
	git clone --depth=1 --filter=blob:none https://github.com/ssitu/ComfyUI_UltimateSDUpscale --recursive && \
	git clone --depth=1 --filter=blob:none https://github.com/WASasquatch/was_affine.git && \
    git clone --depth=1 --filter=blob:none https://github.com/VraethrDalkr/ComfyUI-TripleKSampler.git && \
	git clone --depth=1 --filter=blob:none https://github.com/kijai/ComfyUI-segment-anything-2.git && \
    git clone --depth=1 --filter=blob:none https://github.com/1038lab/ComfyUI-RMBG.git && \
	git clone --depth=1 --filter=blob:none https://github.com/Fannovel16/comfyui_controlnet_aux.git && \
	git clone --depth=1 --filter=blob:none https://github.com/liusida/ComfyUI-AutoCropFaces.git && \
	git clone --depth=1 --filter=blob:none https://github.com/DecartAI/Lucy-Edit-ComfyUI.git && \
	git clone --depth=1 --filter=blob:none https://github.com/GizmoR13/PG-Nodes.git && \
	git clone --depth=1 --filter=blob:none https://github.com/Kishor900/comfyui-wanv2v-video-stitcher.git && \
	git clone --depth=1 --filter=blob:none https://github.com/vrgamegirl19/comfyui-vrgamedevgirl.git && \
	git clone --depth=1 --filter=blob:none https://github.com/BigStationW/ComfyUi-Scale-Image-to-Total-Pixels-Advanced

# Install Dependencies
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m pip install --no-cache-dir -c /constraints.txt \
        diffusers psutil \
        -r /ComfyUI/custom_nodes/ComfyUI-Login/requirements.txt \
        -r /ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite/requirements.txt \
        -r /ComfyUI/custom_nodes/ComfyUI-KJNodes/requirements.txt \
        -r /ComfyUI/custom_nodes/comfyui-vrgamedevgirl/requirements.txt \
        -r /ComfyUI/custom_nodes/ComfyUI-WanVideoWrapper/requirements.txt \
        -r /ComfyUI/custom_nodes/RES4LYF/requirements.txt \
        -r /ComfyUI/custom_nodes/ComfyUI-GGUF/requirements.txt \
        -r /ComfyUI/custom_nodes/ComfyUI-RMBG/requirements.txt \
        -r /ComfyUI/custom_nodes/Lucy-Edit-ComfyUI/requirements.txt \
        -r /ComfyUI/custom_nodes/comfyui_controlnet_aux/requirements.txt

# Set Workspace
WORKDIR /workspace

# Expose Necessary Ports
EXPOSE 8188 9000

RUN python -c "import torch, torchvision, torchaudio, triton; \
import importlib.util; \
onnxruntime = importlib.util.find_spec('onnxruntime'); \
onnxruntime_gpu = importlib.util.find_spec('onnxruntime_gpu'); \
print(f'Torch: {torch.__version__}'); \
print(f'Torchvision: {torchvision.__version__}'); \
print(f'Torchaudio: {torchaudio.__version__}'); \
print(f'Triton: {triton.__version__}'); \
if onnxruntime_gpu: \
    import onnxruntime_gpu as ort; print(f'ONNXRuntime-GPU: {ort.__version__}'); \
elif onnxruntime: \
    import onnxruntime as ort; print(f'ONNXRuntime: {ort.__version__}'); \
else: \
    print(\"ONNXRuntime: not installed\"); \
print(f'CUDA available: {torch.cuda.is_available()}'); \
print(f'CUDA version: {torch.version.cuda}'); \
print(f'Device: {torch.cuda.get_device_name(0) if torch.cuda.is_available() else \"CPU\"}')"

# Start Server
CMD [ "/start.sh" ]


