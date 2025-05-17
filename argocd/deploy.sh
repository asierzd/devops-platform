#!/bin/bash

values_file="./argocd/values.yaml"
argocd_app="./argocd/argocd-app.yaml"

helm repo add argo https://argoproj.github.io/argo-helm

helm upgrade -i my-argo-cd argo/argo-cd --version 7.8.23 -n argocd --create-namespace --values $values_file
# Wait for ArgoCD to be ready
kubectl wait --for=condition=available --timeout=600s deployment/my-argo-cd-argocd-server -n argocd
# Get the ArgoCD admin password
ARGOCD_PASSWORD=$(kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath='{.data.password}' | base64 --decode)
# Print the ArgoCD server URL and admin password
echo "ArgoCD admin password: $ARGOCD_PASSWORD"

# Register ArgoCD Application for GitOps repository
kubectl apply -f $argocd_app
