#!/bin/bash

clear

# load common vars
source ./vars.sh

echo -e "$LOG_INFO starting containers"
docker-compose up -d

echo -e "$LOG_INFO ------------------------------------------------------------------"
echo -e "$LOG_INFO startup in progress (detached)"
echo -e "$LOG_INFO ------------------------------------------------------------------"
