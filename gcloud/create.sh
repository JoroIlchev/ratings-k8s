#!/bin/bash

kubectl apply -f gcloud-pvc.yaml
kubectl apply -f gcloud-mysql-credentials.yaml
kubectl apply -f gcloud-mysql.yaml
kubectl apply -f gcloud-mysql-service.yaml
kubectl apply -f gcloud-config.yaml
kubectl apply -f gcloud-backend.yaml
kubectl apply -f gcloud-backend-service.yaml
kubectl apply -f gcloud-backend-ingress.yaml
kubectl apply -f gcloud-frontend.yaml
kubectl apply -f gcloud-frontend-service.yaml
kubectl apply -f gcloud-frontend-ingress.yaml

