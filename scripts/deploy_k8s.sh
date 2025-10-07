#!/bin/bash
echo "Deploying application to EKS..."
aws eks update-kubeconfig --region us-east-1 --name brain-tasks-cluster

kubectl apply -f /Brain-Tasks-App/kubernetes/deployment.yaml
kubectl apply -f /Brain-Tasks-App/kubernetes/service.yaml

