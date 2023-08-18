#!/bin/bash

# Previously credentials configured on console aws cli
# latest version of aws cli
# the right version of eksctl and kubectl

CLUSTER_NAME=myk8s
REGION=us-east-1

# Create a cluster without nodegroup
eksctl create cluster --name=$CLUSTER_NAME --region=$REGION --zones=us-east-1a,us-east-1b --without-nodegroup 

# Get List of clusters
eksctl get cluster

# Create and Associate IAM OIDC Provider:
eksctl utils associate-iam-oidc-provider --region $REGION --cluster $CLUSTER_NAME --approve

# Create Public Node Group   
eksctl create nodegroup --cluster=$CLUSTER_NAME --region=us-east-1 --name="$CLUSTER_NAME-ng" --node-type=t3.medium --nodes=1 --nodes-min=1 --nodes-max=2 --node-volume-size=20 --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access

# Get nodes 
kubectl get nodes -o wide

# aws eks update-kubeconfig --region=us-east-1 --name=myk8s
