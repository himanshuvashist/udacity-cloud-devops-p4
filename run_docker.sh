#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t $1 .
# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run --name flask -p 8080:80 $1
