# ratings-k8s

Set of k8s objects that will be potentially used in a Java2days presentation.
[Code monsters 2019.](https://2019.codemonsters.pro/)

# A set of useful commands

## Docker

Build a docker image of the backend service:

`docker build -t luchob/ratings-service:v1 -f deployment/Dockerfile .`

Build a docker image of the frontend service:

`docker build -t luchob/ratings-frontend -f deployment/Dockerfile .`

Push the docker to the docker hub.

`docker login`

`docker push luchob/ratings-service:v1`

## Kubectl

Run busy box within the cluster:

`kubectl run my-shell --restart=Never --rm -i --tty --image amouat/network-utils -- bash`

Run mysql client within the cluster:

`kubectl run -i --tty mysql-client --image=imega/mysql-client --restart=Never -- sh`

Use the java2days namespace as default

`kubectl config set-context --current --namespace=java2days`

Remove an annotation from pvc

`kubectl patch pvc java2days-mysql-pvc -p '{"metadata":{"finalizers":null}}'`

## Minikube

Reuse the docker daemon locally:

`eval $(minikube docker-env)`
