#!/bin/bash
echo "Cleaning up old Kubernetes resources..."
aws eks update-kubeconfig --region us-east-1 --name brain-tasks-cluster

kubectl delete -f /Brain-Tasks-App/kubernetes/deployment.yaml || true
kubectl delete -f /Brain-Tasks-App/kubernetes/service.yaml || true

