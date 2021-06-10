#!/bin/bash

# load common vars
source ./vars.sh

#echo -e "$LOG_INFO shutting down"
#docker-compose down -v

echo -e "$LOG_INFO Stop and renove container"
docker stop portainer
docker rm portainer

echo -e "$LOG_INFO Remove volume"
docker volume rm portainer_data

echo -e "$LOG_DONE ------------------------------------------------------------------"
echo -e "$LOG_DONE stopped and removed containers, networks and volumes"
echo -e "$LOG_DONE ------------------------------------------------------------------"
