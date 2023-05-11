# Create aliases
alias k=kubectl

# Set namespace
Kubectl config set-context $(kubectl config current-context) --namespace=<namespace_name>

# Create from definitions
kubectl apply -f <file_definition.yaml>
kubectl delete -f <file_definition.yaml>

# Get all objects
kubectl get all --all-namespaces

# objects
pod, service, deployment, replicaset

# Describe
kubectl describe <object> <object_name>

# Delete
kubectl delete pod <object_name>

# Get (-o wide) (-w)
kubectl get <object>

# Scale
kubectl scale deployment <deployment_name> --replicas=6

You can think of Helm Charts as parameterized Kubernetes YAML files

kubectl get events | grep ReplicaSet

kubectl get nodes

# Official documentation
https://kubernetes.io/docs/reference/kubectl/conventions/


kubectl [command] [TYPE] [NAME] -o <output_format>

Here are some of the commonly used formats:
-o jsonOutput a JSON formatted API object.
-o namePrint only the resource name and nothing else.
-o wideOutput in the plain-text format with any additional information.
-o yamlOutput a YAML formatted API object.