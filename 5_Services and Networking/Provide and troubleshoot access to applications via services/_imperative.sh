# Expose a pod
# This will create a cluster ip service
kubectl expose pod redis --port=6379 --name redis-service
kubectl expose pod redis --port=6379 --name redis-service --dry-run=client -o yaml > service.yaml
kubectl expose pod httpd --port=80 --name httpd
kubectl expose pod <pod-name> --name <service-name> --port 3333  --target-port 80

# Get endpoints
kubectl -n <namespace> get ep

# Get logs from service
kubectl -n <namespace> logs <service.name>

# Service
# Create a Service named redis-service of type ClusterIP to expose pod redis on port 6379
kubectl expose pod redis --port=6379 --name redis-service --dry-run=client -o yaml
# (This will automatically use the pod's labels as selectors)
# Or
kubectl create service clusterip redis --tcp=6379:6379 --dry-run=client -o yaml  #(This will not use the pods labels as selectors, instead it will assume selectors as app=redis. You cannot pass in selectors as an option. So it does not work very well if your pod has a different label set. So generate the file and modify the selectors before creating the service)

# Create a Service named nginx of type NodePort to expose pod nginx's port 80 on port 30080 on the nodes:
kubectl expose pod nginx --port=80 --name nginx-service --type=NodePort --dry-run=client -o yaml
# (This will automatically use the pod's labels as selectors, but you cannot specify the node port. You have to generate a definition file and then add the node port in manually before creating the service with the pod.)
# Or
kubectl create service nodeport nginx --tcp=80:80 --node-port=30080 --dry-run=client -o yaml
# (This will not use the pods labels as selectors)
