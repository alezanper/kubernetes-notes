az account set --subscription <subscription_id>
az aks get-credentials --resource-group <resourcegroup_name> --name <aks_name>


git clone https: //github.com/PacktPublishing/Hands-on-Kubernetes-on-Azure-Third-Edition/
cd Hands-On-Kubernetes-on-Azure/Chapter03/
kubectl apply -f redis-master-deployment.yaml

az aks nodepool update --enable-cluster-autoscaler -g <resourcegroup_name> --cluster-name <aks_name> --name <agent_pool_name> --min-count 1 --max-count 2