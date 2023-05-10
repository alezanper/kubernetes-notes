# To check logs on a specific path inside a pod
kubectl exec -it app -- cat /log/app.log -n <namespace>

