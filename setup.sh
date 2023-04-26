#!/bin/bash

bash <(wget -qO- https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh)

cd ~/stable-diffusion-webui/models/Stable-diffusion
wget https://huggingface.co/SG161222/Realistic_Vision_V2.0/resolve/main/Realistic_Vision_V2.0.safetensors
cd ~/stable-diffusion-webui/models/VAE
wget https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors

mv vae-ft-mse-840000-ema-pruned.safetensors Realistic_Vision_V2.0.VAE.safetensors

wget https://huggingface.co/SG161222/Realistic_Vision_V1.4/resolve/main/Realistic_Vision_V1.4.safetensors

git clone https://github.com/tengshaofeng/lora_tbq
