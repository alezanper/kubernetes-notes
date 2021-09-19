#!/bin/bash

ProjectName="myproject"
ResourceGroupName="myrg"
Location="westus2"
Dns="mysuperdns2030"

# Create Resource Group
az group create \
    -n $ResourceGroupName -l $Location

# Create Ip Adress
az network public-ip create \
    -n "$ProjectName-pip" -g $ResourceGroupName --allocation-method Static --sku Standard --dns-name $Dns

# Create Vnet and Subnet
az network vnet create \
    -n "$ProjectName-vnet" -g $ResourceGroupName --address-prefix 192.168.0.0/24 --subnet-name "$ProjectName-subnet" --subnet-prefix 192.168.0.0/24

# Create Application Gateway
az network application-gateway create \
    -n "$ProjectName-gateway" -l $Location -g $ResourceGroupName --sku Standard_v2 --public-ip-address "$ProjectName-pip" --vnet-name "$ProjectName-vnet" --subnet "$ProjectName-subnet"

# Get Gateway Id
appgwId=$(az network application-gateway show -n "$ProjectName-gateway" -g $ResourceGroupName -o tsv --query "id")

# Create Aks
az aks create --resource-group rg --name myAKSCluster --node-count 1 --generate-ssh-keys --vnet-subnet-id completarrrr


# bash create_infrastructure.sh