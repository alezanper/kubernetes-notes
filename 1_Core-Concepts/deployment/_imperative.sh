#################
## Deployments ##
#################

# Create a deployment
kubectl create deployment nginx --image=nginx
 
# Generate Deployment with 4 Replicas
kubectl create deployment nginx --image=nginx --replicas=4
 
# You can also scale a deployment using the kubectl scale command.
kubectl scale deployment nginx --replicas=4

# Generate Deployment YAML file (-o yaml). Don't create it (--dry-run)
kubectl create deployment --image=nginx nginx --dry-run=client -o yaml > deployment.yaml

# Create a deployment on a specific namespace
kubectl create deployment redis-deploy --image=redis --replicas=2 --namespace=dev-ns