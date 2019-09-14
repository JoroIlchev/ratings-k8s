#!/bin/bash

if [[ $1 == "delete" ]]; then
  kubectl delete -f minikube-config.yaml
  kubectl delete -f minikube-mysql-deployment.yaml
  kubectl delete -f minikube-mysql-service.yaml
  kubectl delete -f minikube-mysql-pvc.yaml
  kubectl delete -f minikube-mysql-pv.yaml
  kubectl delete -f minikube-credentials.yaml
  kubectl delete -f minikube-backend.yaml
elif [[ $1 == "create" ]]; then
  kubectl apply -f minikube-config.yaml
  kubectl apply -f minikube-credentials.yaml
  kubectl apply -f minikube-mysql-pv.yaml
  kubectl apply -f minikube-mysql-pvc.yaml
  kubectl apply -f minikube-mysql-service.yaml
  kubectl apply -f minikube-mysql-deployment.yaml
  kubectl apply -f minikube-backend.yaml
else
  echo "Usage: minikube [create|delete]"
fi
