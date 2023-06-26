# check mounted disks 
kubectl -n <namespace> describe pod <podname> | grep -A2 Mounts 

# get logs from a pvc
kubectl -n <namespace> get pvc
