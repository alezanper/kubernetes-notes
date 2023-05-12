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
