# PV-s and PVC-s

## Create the PV

Check the storageclasses:

````
kubectl get storageclass
````

Create the PV/PVC (only GCloud)

````
kubectl apply -f gcloud-pvc.yaml
````

List the PV

````
kubectl get pv | grep java2days 
````

Describe the disk

````
kubectl describe pv <pv-id>
````

List the gcloud disks:

````
gcloud compute disks list
````


