#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Example of running this file:    ./upload_docker.sh username reponame tagname

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
username=$1
reponame=$2
tag=$3
dockerpath=$username/$reponame
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag flask $dockerpath

# Step 3:
# Push image to a docker repository
docker push "${dockerpath}:${tag}"
