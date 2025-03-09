# This contains all the necessary stuff
# for installing Ollama and others tools

# Installing using command line
# https://ollama.com/download/linuxo
curl -fsSL https://ollama.com/install.sh | sh
ollama -v

# Installing some model from the official ollama model directory
# https://ollama.com/search
ollama run phi3
ollama run deepseek-r1
ollama run llama3.2
ollama run mistral

# Installaing ollama using docker
[Official Docker Docker](https://github.com/ollama/ollama/blob/main/docs/docker.md)

# Docker Compose File
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
# Using a compose file [Link](https://hub.docker.com/r/ollama/ollama)

services:
  ollama:
    image: ollama/ollama:latest
    container_name: ollama
    ports:
      - 11434:11434
    volumes:
      - ollama_storage:/root/.ollama
    extra_hosts:
      - host.docker.internal:host-gateway
    networks:
      - ollama_network
    restart: unless-stopped
volumes:
  ollama_storage: {}
networks:
  ollama_network:
    driver: bridge


# Installing Perplexica.ia using docker
[Link](https://github.com/ItzCrazyKns/Perplexica?tab=readme-ov-file#getting-started-with-docker-recommended)
git clone https://github.com/ItzCrazyKns/Perplexica.git


# Installing OpenWebUI to discuss with ollama like chatGPT using docker
docker compose up -d
# docker-compose.yaml content:
services:
  openwebui:
    image: ghcr.io/open-webui/open-webui:main
    container_name: openwebui
    ports:
      - "3000:8080"
    volumes:
      - openwebui_storage:/app/backend/data
    extra_hosts:
      - "host.docker.internal:host-gateway"
    restart: unless-stopped
volumes:
  openwebui_storage: {}

# Installing WebUI using native installation with python and uv
# https://docs.openwebui.com/getting-started/quick-start/
# NOTE : be sure to be on the user that will launch the systemD unit (ubuntu here)
sudo curl -LsSf https://astral.sh/uv/install.sh | sh

## Installing OpenWeb UI using UV
DATA_DIR=~/.open-webui uvx --python 3 open-webui@latest serve


# Create systemd service file
sudo tee /etc/systemd/system/openwebui.service << 'EOF'
[Unit]
Description=Open WebUI Service
After=network.target

[Service]
Type=simple
User=ubuntu
Environment="DATA_DIR=/home/ubuntu/.open-webui"
Environment="PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/ubuntu/.local/bin"
Environment="PYTHONPATH=/usr/bin/python3"
WorkingDirectory=/home/ubuntu/.open-webui
ExecStart=/home/ubuntu/.local/bin/uvx --python 3 open-webui@latest serve
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
EOF

# Enable and start the service
sudo systemctl enable openwebui
sudo systemctl start openwebui

# Check status (optional)
sudo systemctl status openwebui
sudo journalctl -f -u openwebui.service -n 50 --no-pager

# Accesing using default Python port
http://localhost:8080/ 

## Updating with Pip
pip install -U open-webui
