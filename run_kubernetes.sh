#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
username=$1
reponame=$2
tag=$3
dockerpath=$username/$reponame

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run poo --image=$dockerpath --port 8090

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/poo 8090:8080