#!/bin/bash

# Simple Bash script to build and run Docker container

# Name of the Docker image
IMAGE_NAME="my-docker-app"

# Stop any running container with the same name
docker rm -f $IMAGE_NAME 2>/dev/null

# Build the Docker image
docker build -t $IMAGE_NAME .

# Run the Docker container
docker run -d -p 5000:5000 --name $IMAGE_NAME $IMAGE_NAME

echo "Docker container '$IMAGE_NAME' is running on port 5000"
