#!/bin/bash

helm repo add argo https://argoproj.github.io/argo-helm

helm upgrade -i my-argo-cd argo/argo-cd --version 7.8.23 -n argocd --create-namespace --values values.yaml
# Wait for ArgoCD to be ready
kubectl wait --for=condition=available --timeout=600s deployment/argocd-server -n argocd
# Get the ArgoCD server URL
ARGOCD_SERVER=$(kubectl get svc argocd-server -n argocd -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
# Get the ArgoCD admin password
ARGOCD_PASSWORD=$(kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath='{.data.password}' | base64 --decode)
# Print the ArgoCD server URL and admin password
echo "ArgoCD server URL: http://$ARGOCD_SERVER"
echo "ArgoCD admin password: $ARGOCD_PASSWORD"

