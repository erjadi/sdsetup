#!/bin/bash

cd ~/stable-diffusion-webui/models/Stable-diffusion
wget https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
wget https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors

cd ~/stable-diffusion-webui/models/VAE
wget https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors

bash <(wget -qO- https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh)

