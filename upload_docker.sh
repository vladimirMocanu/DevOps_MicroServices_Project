#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=vladimirmocanu123/devops

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag devops $dockerpath
docker login --username=vladimirmocanu123

# Step 3:
# Push image to a docker repository
docker push $dockerpath
