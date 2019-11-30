#!/bin/bash

# delete the backend service
kubectl delete ingress java2days-ingress-backend
kubectl delete svc java2days-ratings-backend-service
kubectl delete deployment java2days-ratings-backend
kubectl delete configmap java2days-ratings-config
