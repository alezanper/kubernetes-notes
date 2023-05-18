https://docs.aws.amazon.com/eks/latest/userguide/ebs-csi.html

# Create a Role
eksctl create iamserviceaccount \
  --name ebs-csi-controller-sa \
  --namespace kube-system \
  --cluster myk8s \
  --attach-policy-arn arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy \
  --approve \
  --role-only \
  --role-name AmazonEKS_EBS_CSI_DriverRole


eksctl create addon \
  --name aws-ebs-csi-driver \
  --cluster myk8s \
  --service-account-role-arn arn:aws:iam::145864334062:role/AmazonEKS_EBS_CSI_DriverRole \
  --force
