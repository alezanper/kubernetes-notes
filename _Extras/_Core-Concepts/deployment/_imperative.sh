#################
## Deployments ##
#################

# Create a deployment
kubectl create deployment <deployment-name> --image=nginx
 
# Generate Deployment with 4 Replicas
kubectl create deployment <deployment-name> --image=nginx --replicas=4
 
# You can also scale a deployment using the kubectl scale command.
kubectl scale deployment <deployment-name> --replicas=4

# Generate Deployment YAML file (-o yaml). Don't create it (--dry-run)
kubectl create deployment --image=nginx <deployment-name> --dry-run=client -o yaml > deployment.yaml

# Create a deployment on a specific namespace
kubectl create deployment <deployment-name> --image=redis --replicas=2 --namespace=dev-ns

# Edit a running deployment
kubectl -n <namespace> edit deployment <deploy-name> 

k create deploy webapp --image=kodekloud/webapp-color --replicas=3