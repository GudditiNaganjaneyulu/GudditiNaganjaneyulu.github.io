#!/bin/bash

# Set the Docker Hub repository name
REPO=gudditi/tomcat-resume

# Set the current date and time as a timestamp
TIMESTAMP=$(date +%Y%m%d%H%M%S)

# Parse the Docker Hub credentials from another file
source dockercredentials

# Build the Docker image with a date-stamped tag
docker build -t $REPO:$TIMESTAMP .

# Login to Docker Hub using the parsed credentials
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# Push the Docker image to Docker Hub
docker push $REPO:$TIMESTAMP

# Pull the latest Docker image from Docker Hub
docker pull $REPO:latest

# Run the Docker image
docker run -p 8080:8080 $REPO:latest#!/bin/bash

# Set the Docker Hub repository name
REPO=gudditi/tomcat-resume

# Set the current date and time as a timestamp
TIMESTAMP=$(date +%Y%m%d%H%M%S)

# Parse the Docker Hub credentials from another file
source dockercredentials

# Build the Docker image with a date-stamped tag
docker build -t $REPO:$TIMESTAMP .

# Login to Docker Hub using the parsed credentials
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# Push the Docker image to Docker Hub
docker push $REPO:$TIMESTAMP

# Pull the latest Docker image from Docker Hub
docker pull $REPO:latest

# Run the Docker image
docker run -p 8080:8080 $REPO:latest
