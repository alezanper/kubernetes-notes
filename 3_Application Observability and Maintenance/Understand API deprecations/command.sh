##############
## Versions ##
##############

k api-resources		# to see plurals
k explain job		# to see the group of api

# To identify the preferred version of authorization.k8s.io
kubectl proxy 8001&
curl localhost:8001/apis/authorization.k8s.io

# Enable the v1alpha1 version for rbac.authorization.k8s.io API group on the controlplane node.
vim /etc/kubernetes/manifests/kube-apiserver.yaml
# add to command
    - --runtime-config=rbac.authorization.k8s.io/v1alpha1 --> This one 
kubectl get po -n kube-system	# check the pod

# Install the kubectl convert plugin 
curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl-convert
chmod +x kubectl-convert
mv kubectl-convert /usr/local/bin/kubectl-convert
kubectl-convert --help

# Use converter
kubectl-convert -f ingress-old.yaml --output-version networking.k8s.io/v1 | kubectl apply -f -