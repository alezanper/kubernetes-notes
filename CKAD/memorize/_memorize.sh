# Create aliases
alias k=kubectl
export do="--dry-run=client -o yaml"

## Pods ##
kubectl run test --image=nginx $do --command -- sh -c "touch /tmp/ready && sleep 1d" > file.yaml

## Test Communication
kubectl run test --restart=Never --rm --image=nginx:alpine -i -- curl <endpoint>:<port>
kubectl run test --restart=Never --rm --image=busybox -i -- wget -o- <endpoint>

# Run bash from inside a pod
kubectl exec -it pod -- /bin/bash
kubectl exec -it pod -- sh

# Create secrets and configmaps
kubectl create cm mycm --from-literal=key=value --from-literal=key2=value2
kubectl create secret generic mysc --from-literal=key=value --from-literal=key2=value2

# distribute credentials

---
env:
- name: key
  valueFrom:
  configMapKeyRef:
    name: configname
    key: key

---
strategy:
  rollingUpdate:
    maxSurge: 1
    maxUnavailable: 2
  type: RollingUpdate

---  
resources:
  requests:
    cpu: ".2"