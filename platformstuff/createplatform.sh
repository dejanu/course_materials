#!/bin/bash

# ANSI escape codes
YELLOW='\033[1;33m'
PINK='\033[1;35m'

# ANSI escape code to reset color
NC='\033[0m'


# install argo locahost:80
kubectl create namespace argocd
kubectl apply -n argocd -f argocd.yaml
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

sleep 10

# Echo the credentials in yellow
echo -e "${YELLOW}The credentials for Argo ...${NC}"
kubectl -n argocd get secrets argocd-initial-admin-secret -ojsonpath="{.data.password}" | base64 -d && echo -e "\n"

sleep 10

kubectl config set-context --current --namespace=argocd
## prompt user and  Use the variable in the Argo CD command
read -p "Enter the repository URL: " REPO_URL
argocd app create demoapp --repo "$REPO_URL" --path demoapp --dest-server https://kubernetes.default.svc --dest-namespace default
# argocd app create demoapp  --insecure --repo https://github.com/dejanu/cautious-idp.git --path demoapp --dest-server https://kubernetes.default.svc --dest-namespace default
kubectl config set-context --current --namespace=default

## install goldilocks
kubectl create ns goldilocks
kubectl apply -f goldilocksresources/

# enable namespace for goldilokcs
kubectl label ns default goldilocks.fairwinds.com/enabled=true

# install deployment for idp
kubectl apply -f idp.yaml

echo -e "${PINK}IDP at....http://localhost:8888 ${NC}"

