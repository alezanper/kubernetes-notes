#############
## Secrets ##
#############

kubectl get secrets

kubectl describe secrets

kubectl create secret generic <secret_name> --from-literal=DB_Host=mysql --from-literal=DB_User=root --from-literal=DB_Password=paswrd

kubectl create secret generic <secret_name> --from-file=app_secret.properties

kubectl get secret <secret_name> -o yaml > secret.yaml

kubectl describe secret <secret_name>