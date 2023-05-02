##########
## Pods ##
##########

# Create a pod from an image
kubectl run nginx --image=nginx
kubectl run httpd --image=httpd:alpine

# Generate manifest (pod.yaml) using imperative command
kubectl run nginx --image=nginx --dry-run=client -o yaml > pod.yaml
kubectl run redis --image=redis:alpine --dry-run=client -o yaml > redis.yaml

# Delete a pod
kubectl delete pod nginx

# get the template from a running pod
kubectl get pod webapp -o yaml > my-new-pod.yaml

