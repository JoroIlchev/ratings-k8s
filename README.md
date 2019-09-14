# ratings-k8s

Set of k8s objects that will be potentially used in a Java2days presentation.

# Useful commands

Build a docker image of the backend service:

`docker build -t luchob/ratings-service -f deployment/Dockerfile .`

Run busy box within the cluster:

`kubectl run -i --tty busybox --image=busybox --restart=Never -- sh`

Run mysql client within the cluster:

`kubectl run -i --tty mysql-client --image=imega/mysql-client --restart=Never -- sh`

Reuse the docker daemon locally:

`eval $(minikube docker-env)`
