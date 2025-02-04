#Creating a dir and editing the docker-compose.yml file
#mkdir -p /docker-ngynx-proxy-manager
#cd docker-ngynx-proxy-manager/
nano docker-compose.yml

#Put the basic config infomartion for a miminal setup
services:
  app:
    image: 'docker.io/jc21/nginx-proxy-manager:latest'
    restart: unless-stopped
    ports:
      - '80:80'
      - '81:81'
      - '443:443'
    volumes:
      - ./data:/data
      - ./letsencrypt:/etc/letsencrypt
    extra_hosts:
      - "host.docker.internal:host-gateway"

#Save the file

#Starting the composed stack in background
docker-compose up -d
docker compose up -d
docker compose logs

#Default user//password of the NPM Admin interface TO BE CHANGED
admin@example.com /// changeme

