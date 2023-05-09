# Checking status of deployment
kubectl rollout status deployment/myapp-ddeployment

# checking history
kubectl rollout history deployment/myapp-ddeployment

# rolling update is the default strategy
kubectl rollout undo deployment/myapp-deployment

# to add information to history
kubectl create -f deployment-definition.yaml --record

# Setting directly an image to a running deployment
kubectl set image deployment/myapp-deployment nginx-container=nginx:1.12-perl

# undo a deployment
kubectl rollout undo deployment/myapp-deployment