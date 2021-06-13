NAMESPACES
- Separate spaces
- Separate rules

# Get the pods on dev namespace 
Kubectl get pods --namespace=dev

# set dev namespace as default
Kubectl config set-context $(kubectl config current-context) --namespace=dev

# Read all namespaces
Kubectl get pods --all-namespaces
