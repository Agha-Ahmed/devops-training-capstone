# Day 4 – Kubernetes Local Cluster Setup

## Objective
Start a local Kubernetes cluster and verify it using kubectl.

## Steps Performed

Step 1 — Install Minikube
- `brew install minikube`
- Check installation:
- `minikube version`

Step 2 — Install kubectl
- `brew install kubectl`
- Verify:  `kubectl version --client`

Step 3 — Start Local Kubernetes Cluster
- Run: `minikube start`
This will create a single-node Kubernetes cluster locally.

Step 4 — Verify cluster
- Run: `kubectl get nodes`

Command output:

NAME       STATUS   ROLES           AGE   VERSION
minikube   Ready    control-plane   22h   v1.35.1