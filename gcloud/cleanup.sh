#!/bin/bash

# delete the backend service
kubectl delete ingress java2days-ingress
kubectl delete svc java2days-ratings-backend-service
kubectl delete deployment java2days-ratings-backend
kubectl delete configmap java2days-ratings-config

# delete the mysql
kubectl delete svc java2days-mysql-service
kubectl delete deployment java2days-mysql-delployment
kubectl delete pvc java2days-mysql-pvc
kubectl delete secret java2days-mysql-credentials


