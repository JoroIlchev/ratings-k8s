#!/bin/bash

kubectl apply -f storage/gcloud-pvc.yaml
kubectl apply -f mysql/gcloud-mysql-credentials.yaml
kubectl apply -f mysql/gcloud-mysql.yaml
kubectl apply -f mysql/gcloud-mysql-service.yaml
kubectl apply -f backend/gcloud-backend-config.yaml
kubectl apply -f backend/gcloud-backend.yaml
kubectl apply -f backend/gcloud-backend-service.yaml
kubectl apply -f backend/gcloud-backend-ingress.yaml
kubectl apply -f frontend/gcloud-frontend.yaml
kubectl apply -f frontend/gcloud-frontend-service.yaml
kubectl apply -f frontend/gcloud-frontend-ingress.yaml
