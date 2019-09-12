#!/bin/bash

if [[ $1 == "delete" ]]; then
  kubectl delete -f minikube-mysql-deployment.yaml
  kubectl delete -f minikube-mysql-service.yaml
  kubectl delete -f minikube-mysql-pvc.yaml
  kubectl delete -f minikube-mysql-pv.yaml
  kubectl delete -f minikube-credentials.yaml
elif [[ $1 == "create" ]]; then
  kubectl create -f minikube-credentials.yaml
  kubectl create -f minikube-mysql-pv.yaml
  kubectl create -f minikube-mysql-pvc.yaml
  kubectl create -f minikube-mysql-service.yaml
  kubectl create -f minikube-mysql-deployment.yaml
else
  echo "Usage: minikube [create|delete]"
fi
