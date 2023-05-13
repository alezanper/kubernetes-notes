kubectl get jobs

kubectl logs <job_name>

# Selectors 
kubectl get pods --selector env=dev
kubectl get pods --selector bu=finance
kubectl get all --selector env=prod
kubectl get all --selector env=prod,bu=finance,tier=frontend	# keep commas without spaces

# Rolling updates and rollbacks (Deployments)
# A rollout is created with each version of the software

# to check the status:
kubectl rollout status deployment/myapp-deployment

# to check the history:
kubectl rollout history deployment/myapp-deployment

# There are two types of deployment strategies:
# destroy all and create new deployment at the same time (Recreate)
# destroy one by one (Rolling Update)
# To update a deployment is needed to update the file and the apply the change with this command:
kubectl apply -f <file>

# You can update the deployment by setting the image directly:
kubectl set image deployment/myapp-deployment nginx-container=nginx:1.9.1

# To upgrade a new replicaset is create and the new pod will be created there and being deleted on the original replicaset
# If something fails on the upgrade you can undo the upgrade by using:
kubectl rollout undo deployment/myapp-deployment

# An specific version of the deployment can be checked by using:
kubectl rollout history deployment <deploymen-name> --revision=1

# You can use the record flag to add information to the history of deployments
kubectl set image deployment nginx nginx=nginx:1.17 --record deployment.extensions/nginx image updated

# As example to rollback to a previous version use:
kubectl rollout undo deployment <deployment-name>

# To rollback to a specific revision use:
kubectl rollout undo deployment nginx --to-revision=1

# check status deployment and pod to find erros:
kubectl -n <namespace> get deploy, pod | <deploy-name>

# Restart a deployment
kubectl -n <namespace> rollout restart deploy <deploy-name>
