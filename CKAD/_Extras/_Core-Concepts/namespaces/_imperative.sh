kubectl create namespace dev-ns

# get namespaces
kubectl get ns

NAMESPACES
- Separate spaces
- Separate rules

# Get the pods on dev namespace 
Kubectl get pods --namespace=dev

# set dev namespace as default
Kubectl config set-context $(kubectl config current-context) --namespace=dev

# Read all namespaces
Kubectl get pods --all-namespaces

# Run a container on a specific namespace
kubectl run nginx --image=nginx --namespace=uat