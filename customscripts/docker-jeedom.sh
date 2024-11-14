# List of command to install the Domotic Solution https://www.jeedom.com/ on a docker container
# https://doc.jeedom.com/fr_FR/installation/docker

# Listing the differents device to use and to link
ls -l /dev/serial/by-id
lrwxrwxrwx 1 root root 13 13 nov.  20:14 usb-Itead_Sonoff_Zigbee_3.0_USB_Dongle_Plus_V2_529909c9c512ef11a1c06db8bf9df066-if00-port0 -> ../../ttyUSB0
ls -l /dev/ttyUSB*
crw-rw---- 1 root dialout 188, 0 13 nov.  20:14 /dev/ttyUSB0
# Need to link /dev/ttyUSB0 on the docker

# Docker compose sample to use an exposing on 40080 port
# ---------------------------------------------------------------------
services:
  jeedom:
    image: jeedom/jeedom:latest
    volumes:
      - http:/var/www/html
      - db:/var/lib/mysql
    devices:
      - /dev/ttyUSB0:/dev/ttyUSB0
    tmpfs:
      - /tmp/jeedom
    ports:
      - 40080:80
    restart: always
    network_mode: bridge
    healthcheck:
      test: ["CMD", "curl", "-fs", "-S", "--max-time", "2", "http://localhost:80"]
      interval: 30s
      timeout: 10s
      retries: 5
volumes:
  db:
  http:
