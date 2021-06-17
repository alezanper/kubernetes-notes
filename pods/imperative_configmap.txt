###############
## Configmap ##
###############

kubectl create configmap app-config --from-literal=APP_COLOR=blue --from-literal=APP_MOD=prod

kubectl create configmap webapp-config-map --from-literal=APP_COLOR=darkblue

kubectl create configmap app-config --from-file=config.properties

kubectl create -f config-map.yaml

kubectl get configmaps

kubectl describe configmaps

