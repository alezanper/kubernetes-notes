# Previously credentials configured on console aws cli
# latest version of aws cli
# the right version of eksctl and kubectl

# Create a cluster without nodegroup
eksctl create cluster --name=myk8s --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup 

# Get List of clusters
eksctl get cluster

# Create and Associate IAM OIDC Provider:
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster myk8s --approve

# Create Public Node Group   
eksctl create nodegroup --cluster=myk8s --region=us-east-1 --name=myk8s-ng --node-type=t3.medium --nodes=1 --nodes-min=1 --nodes-max=2 --node-volume-size=20 --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access

# Get nodes 
kubectl get nodes -o wide