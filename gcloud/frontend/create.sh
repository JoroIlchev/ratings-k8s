#!/bin/bash

kubectl apply -f gcloud-frontend.yaml
kubectl apply -f gcloud-frontend-service.yaml
kubectl apply -f gcloud-frontend-ingress.yaml
