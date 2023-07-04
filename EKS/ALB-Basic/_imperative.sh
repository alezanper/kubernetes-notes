###################
## AWS Resources ##
###################
https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html
https://docs.aws.amazon.com/eks/latest/userguide/alb-ingress.html

# Test with a pod
kubectl run testpod --restart=Never --rm --image=nginx -i -- curl <ip>:<port>

# Add permissions to the EKS cluster
# Policy
curl -O https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.4.7/docs/install/iam_policy.json
aws iam create-policy \
    --policy-name AWSLoadBalancerControllerIAMPolicy \
    --policy-document file://iam_policy.json

# Create iam service account 
eksctl create iamserviceaccount \
  --cluster=myk8s \
  --namespace=kube-system \
  --name=aws-load-balancer-controller \
  --role-name AmazonEKSLoadBalancerControllerRole \
  --attach-policy-arn=arn:aws:iam::251589962883:policy/AWSLoadBalancerControllerIAMPolicy \
  --approve

# AWS ALB ingress controller renamed and redisigned to aws load balancer controller
# Install load balancer controller with helm
helm repo add eks https://aws.github.io/eks-charts
helm repo update
helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=myk8s \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller 

# Install app
kubectl apply -f simple-app-deployment.yaml
kubectl apply -f simple-app-service-nodeport.yaml
kubectl apply -f simple-app-ingress.yaml