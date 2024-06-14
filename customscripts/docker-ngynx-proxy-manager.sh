#Creating a dir and editing the docker-compose.yml file
#mkdir -p /docker-ngynx-proxy-manager
#cd docker-ngynx-proxy-manager/
nano docker-compose.yml

#Us the basic config infomartion
Version: 3
services: 
  app:    
  image: 'jc21/nginx-proxy-manager:latest'    
  container-name: proxy-manager    
  restart: unless-stopped    
  ports:
      - '80:80' 
      – '81:81'      
      - '443:443'    
  volumes:
    – ./data:/data
    – ./passencryption:/etc/talencrypt
volumes:  
    data:  
    letsencrypt:

#Save the file
#Starting the composed stack in background
docker-compose up -d
