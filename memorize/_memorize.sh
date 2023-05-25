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