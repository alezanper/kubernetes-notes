
kubectl describe ingress --namespace app-space
kubectl edit ingress --namespace app-space
kubectl get deploy --all-namespaces

# network policy 
kubectl get networkpolicy

# Ingress
# A ingress controller must be deployed; GCP https, loadbalancer (GCE) nginx both are supported by the k8s project. However, there are additional suppliers like contour HAPROXY traefik and istio
