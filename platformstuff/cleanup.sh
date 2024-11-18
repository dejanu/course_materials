#!/bin/bash

kubectl delete -f goldilocksresources/
kubectl delete -f argocd.yaml

kubectl delete ns argocd
kubectl delete ns goldilocks

kubectl delete -f idp.yaml
kubectl delete svc redis
kubectl delete svc flask
kubectl delete svc flask-svc
kubectl delete deployments.apps redis flask-app