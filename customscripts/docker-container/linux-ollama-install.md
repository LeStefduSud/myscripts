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
# Create systemd service file
sudo tee /etc/systemd/system/openwebui.service << 'EOF'
[Unit]
Description=Open WebUI Service
After=network.target

[Service]
Type=simple
User=sstassin
Environment="DATA_DIR=/home/sstassin/.open-webui"
Environment="PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/sstassin/.local/bin"
Environment="PYTHONPATH=/usr/bin/python3"
WorkingDirectory=/home/sstassin/.open-webui
ExecStart=/home/sstassin/.local/bin/uvx --python /usr/bin/python3 open-webui@latest serve
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

# Accesing using default Python port
http://localhost:8080/ 

## Updating with Pip
pip install -U open-webui
