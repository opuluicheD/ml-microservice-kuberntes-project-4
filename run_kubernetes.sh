#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="danielchucks/flaslpredictml:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlpredict --image=$dockerpath --port=80 --labels app=flaskmlpredictk8s


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mlpredict 8000:5000


