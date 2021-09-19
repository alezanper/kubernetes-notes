App gategay + aks

crear red gateway
crear gateway
agregar addon para gateway
hacer peering con la red


az group create -n agic -l westus2

az network public-ip create -n agic-pip -g agic --allocation-method Static --sku Standard --dns-name mysuperdns2020alex

az network vnet create -n agic-vnet -g agic --address-prefix 192.168.0.0/24 --subnet-name agic-subnet --subnet-prefix 192.168.0.0/24

az network application-gateway create -n agic -l westus2 -g agic --sku Standard_v2 --public-ip-address agic-pip --vnet-name agic-vnet --subnet agic-subnet

appgwId=$(az network application-gateway show -n agic -g agic -o tsv --query "id")

az aks enable-addons -n mysuperaks -g aksrg -a ingress-appgw --appgw-id $appgwId

nodeResourceGroup=$(az aks show -n mysuperaks -g aksrg -o tsv --query "nodeResourceGroup")

## toma tiempo en aparecer
aksVnetName=$(az network vnet list -g $nodeResourceGroup -o tsv --query "[0].name")

aksVnetId=$(az network vnet show -n $aksVnetName -g $nodeResourceGroup -o tsv --query "id")

az network vnet peering create -n AppGWtoAKSVnetPeering -g agic --vnet-name agic-vnet --remote-vnet $aksVnetId --allow-vnet-access

appGWVnetId=$(az network vnet show -n agic-vnet -g agic -o tsv --query "id")

az network vnet peering create -n AKStoAppGWVnetPeering -g $nodeResourceGroup --vnet-name $aksVnetName --remote-vnet $appGWVnetId --allow-vnetaccess

git clone https: //github.com/PacktPublishing/Hands-on-Kubernetes-on-Azure-Third-Edition/


kubectl create -f guestbook-all-in-one.yaml

kubectl apply -f simple-frontend-ingress.yaml



166
