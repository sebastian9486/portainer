#!/bin/bash

clear

# load common vars
source ./vars.sh

#echo -e "$LOG_INFO starting containers"
# docker-compose up -d

echo -e "$LOG_INFO Create volume"
docker volume create portainer_data

echo -e "$LOG_INFO Create password file"
passwdFile="portainer.passwd.generated"
rm "$passwdFile"
echo -n "admin" > "$passwdFile"

echo -e "$LOG_INFO Start container"
docker run -d -p 9990:9000 --name=portainer --restart=unless-stopped \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  -v /etc/timezone:/etc/timezone:ro \
  -v "$PWD/$passwdFile:/tmp/portainer_password" \
  portainer/portainer-ce:alpine --admin-password-file /tmp/portainer_password

echo -e "$LOG_INFO ------------------------------------------------------------------"
echo -e "$LOG_INFO startup in progress (detached)"
echo -e "$LOG_INFO ------------------------------------------------------------------"
