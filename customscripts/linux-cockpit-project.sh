# Script for installting https://cockpit-project.org/ on different plateform
# https://cockpit-project.org/running.html

sudo apt update && sudo apt upgrade -y
sudo apt install cockpit -y

sudo systemctl start cockpit
sudo systemctl enable cockpit

https://<your-server-ip>:9090
