#!/bin/bash
set -e

echo "Cleaning up old Kubernetes resources..."

aws eks update-kubeconfig --region us-east-1 --name brain-tasks-cluster

kubectl delete -f /root/Brain-Tasks-App/kubernetes/deployment.yaml --ignore-not-found=true
kubectl delete -f /root/Brain-Tasks-App/kubernetes/service.yaml --ignore-not-found=true

echo "Cleanup complete."

