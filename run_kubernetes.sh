#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=jkimuli/udacity-ml

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacity-minikube --image=$dockerpath:latest


# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host

kubectl expose deployment udacity-minikube --type=NodePort --port=8000

