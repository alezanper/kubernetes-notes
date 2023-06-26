# Start minikube
minikube start

# Finish minikube
minikube delete

# Forward port 
kubectl port-forward svc/<service name> -n <namespace> <host port>:<service port>