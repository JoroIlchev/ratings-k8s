#!/bin/bash

kubectl apply -f gcloud-mysql-credentials.yaml
kubectl apply -f gcloud-mysql.yaml
kubectl apply -f gcloud-mysql-service.yaml
