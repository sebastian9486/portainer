#!/bin/bash

# load common vars
source ./vars.sh

echo -e "$LOG_INFO shutting down"
docker-compose down -v

echo -e "$LOG_DONE ------------------------------------------------------------------"
echo -e "$LOG_DONE stopped and removed containers, networks and volumes"
echo -e "$LOG_DONE ------------------------------------------------------------------"
