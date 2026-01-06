#!/bin/bash

# Check if the Docker container is running
CONTAINER_NAME="my-docker-app"

if [ $(docker ps -q -f name=$CONTAINER_NAME) ]; then
    echo "Container $CONTAINER_NAME is running ✅"
else
    echo "Container $CONTAINER_NAME is not running ❌"
fi
