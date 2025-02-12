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
sudo curl -LsSf https://astral.sh/uv/install.sh | sh
## Installing OpenWeb UI using UV
DATA_DIR=~/.open-webui uvx --python 3.11 open-webui@latest serve

# Accesing using default Python port
http://localhost:8080/ 

## Updating with Pip
pip install -U open-webui
