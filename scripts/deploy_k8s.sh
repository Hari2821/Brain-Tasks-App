#!/bin/bash
set -e

echo "Deploying application to EKS cluster..."

# Ensure kubeconfig is updated
aws eks update-kubeconfig --region us-east-1 --name brain-tasks-cluster

# Apply Kubernetes manifests
kubectl apply -f /root/Brain-Tasks-App/kubernetes/deployment.yaml
kubectl apply -f /root/Brain-Tasks-App/kubernetes/service.yaml

echo "Deployment complete."

