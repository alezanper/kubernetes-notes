##########
## Pods ##
##########

# Create a pod from an image
kubectl run nginx --image=nginx
kubectl run httpd --image=httpd:alpine

# Generate manifest (pod.yaml) using imperative command
kubectl run nginx --image=nginx --dry-run=client -o yaml > pod.yaml
kubectl run redis --image=redis:alpine --dry-run=client -o yaml > redis.yaml

export do="--dry-run=client -o yaml" 
kubectl run redis --image=redis:alpine $do > redis.yaml

# Delete a pod
kubectl delete pod nginx

# get the template from a running pod
kubectl get pod webapp -o yaml > my-new-pod.yaml

# create a pod with commands 
export do="--dry-run=client -o yaml" 
kubectl create pod <pod-name> --image=nginx $do --command -- sh -c "touch /tmp/ready && sleep 1d" > file.yaml

# Filter pod from all pods
kubectl -n <namespace> get pod -o yaml | grep <pod-name> -A10

# delete a pod quickly
kubeclt -n <namespace> delete pod <pod-name> --force --grace-period=0

# check for errors 
kubectl -n <namespace> describe pod <pod-name> | grep -i error

# create a pod using labels
kubeclt -n <namespace> run <podname> --image=nginx --labels: project=best

# create a pod that run a curl 
kubectl run <podname> --restart=never --rm --image=nginx_alpine -i -- curl <endpoint>:<port>

# get pod cluster ips
kubectl -n <namespace> get pod -o wide

# See mounts on pods
kubectl -n <namespace> describe pod <pod-name> | grep -A2 Mounts:

