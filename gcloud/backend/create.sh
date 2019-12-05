#!/bin/bash

kubectl apply -f gcloud-backend-config.yaml
kubectl apply -f gcloud-backend.yaml
kubectl apply -f gcloud-backend-service.yaml
kubectl apply -f gcloud-backend-ingress.yaml
