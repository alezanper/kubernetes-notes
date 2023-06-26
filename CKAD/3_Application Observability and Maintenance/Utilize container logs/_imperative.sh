# on docker:
docker run -d kodekloud/event-simulator
# to see the generated logs use: 
docker logs -f <container-id>

# On kubernetes:
kubectl create -f event-simulator.yaml
kubectl logs -f event-simulator-pod

#With multiple container in the same pod the command should look like:
kubectl logs -f event-simulator-pod event-simulator

# Get logs from service
kubectl -n <namespace> logs <service.name>
