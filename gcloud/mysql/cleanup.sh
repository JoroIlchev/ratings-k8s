#!/bin/bash

# delete the mysql
kubectl delete svc java2days-mysql-service
kubectl delete deployment java2days-mysql-delployment
kubectl delete secret java2days-mysql-credentials
