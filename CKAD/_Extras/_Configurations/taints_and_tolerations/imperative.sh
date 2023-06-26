# kubectl taint nodes <node-name> key=value:<taint-effect>
# there are three possible taints NoSchedule | preferNoSchedule | NoExecute

# add a taint
kubectl taint nodes node1 app=blue:NoSchedule

# remove a taint
kubectl taint nodes masternode node-role.kubernetes.io/masternode:NoSchedule-

# describe pod taints
kubectl describe node <pod_name> | grep Taint
