# Docker Compose File for starting a Guacamole Container on a ARM host
# Allowing to connect to the host using host.docker.internam


# Creating a docker compose file
services:
  guacamole:
    image: oznu/guacamole:armhf
    container_name: guacamole
    volumes:
      - guacamole_data:/config
    ports:
      - "8080:8080"
    extra_hosts:
      - "host.docker.internal:host-gateway"
    restart: unless-stopped

volumes:
  guacamole_data:
    name: guacamole_data