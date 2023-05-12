# install helm
sudo snap install helm --classic

# List helm releases
helm -n <namespace> ls

# Delete (unistall) releases 
helm -n <namespace> uninstall <release-name> 

# Helm repo list
helm repo list

# Helm repo update
helm repo update

# Search an helm repo
helm search repo nginx

# upgrade a release
helm -n <namespace> upgrade <release-name> bitnami/nginx

# Check values from a package
helm show values bitnami/apache
helm show values bitnami/apache | yq e

# install a customize version of apache
helm -n <namespace> install <release-name> bitnami/apache --set replicaCount=2 --set image.debug=true

# List all releases even the broken ones
helm -n <namespace> ls -a


