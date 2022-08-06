#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="lanrewadge/udacitymicroservice:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacitymicroservice\
    --image=$dockerpath\
    --port=80 --labels app=udacitymicroservice

# Step 3:
# List kubernetes pods


# Step 4:
# Forward the container port to a host
kubectl port-forward udacitymicroservice 8000:80
