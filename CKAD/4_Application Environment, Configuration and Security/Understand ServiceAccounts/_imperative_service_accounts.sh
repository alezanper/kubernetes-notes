# Service accounts	for machines
# user accounts		for people and developers

kubectl create serviceaccount <myservice-account-name>
kubectl get serviceaccount
kubectl describe serviceaccount <myservice-account-name>

# Since k8s 1.24 secrets won't be created for service accounts automatically
# If a secret belongs to a service account it'll have the annotation kubernetes.io/service-account.name
kubectl -n <namespace> get secrets -o yaml | grep annotations -A 1 

# Get token encoded
kubectl -n <namespace> get secret <secret-associated-sa> -o yaml

# Get decoded token
kunectl -n <namespace> describe secret <secret-associated-sa>