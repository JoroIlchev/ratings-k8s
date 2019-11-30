#!/bin/bash

#Delete the frontend
kubectl delete ingress java2days-ingress-frontend
kubectl delete svc java2days-ratings-frontend-service
kubectl delete deployment java2days-ratings-frontend
