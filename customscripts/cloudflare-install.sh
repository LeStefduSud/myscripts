# Installing cloudflared tunnel and others stuff
# ref https://www.crosstalksolutions.com/cloudflare-tunnel-easy-setup/

#Installing docker connector using docker, given by the website
sudo docker run -d --restart=always cloudflare/cloudflared:latest tunnel --no-autoupdate run --token <cloudflared-tunnel-key>


