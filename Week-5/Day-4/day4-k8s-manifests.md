# Day 4 – Kubernetes Manifests

## Objective
Create Kubernetes deployment and service manifests for the application.

## Files Created

k8s/deployment.yaml  
k8s/service.yaml  

## Deployment Manifest
Defines a Kubernetes Deployment that runs the container image.

Key configuration:
- Deployment name: devops-training-app
- Replicas: 1
- Container image: devops-training-app
- Container port: 5000

## Service Manifest
Defines a Kubernetes Service to expose the application.

Key configuration:
- Service type: NodePort
- Port: 5000
- Target port: 5000

## Result

The Kubernetes manifests were successfully created and stored in the **k8s/** directory.  
These manifests will be used to deploy the application into the local Kubernetes cluster using `kubectl apply`.