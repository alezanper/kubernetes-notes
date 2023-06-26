# create a pod with commands 
export do="--dry-run=client -o yaml" 
kubectl create pod <pod-name> --image=nginx $do --command -- sh -c "touch /tmp/ready && sleep 1d" > file.yaml
