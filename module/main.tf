resource "aws_eks_cluster" "demo" {
  name     = "eks_cluster"
  role_arn = aws_iam_role.eks-cluster-demo.arn

  vpc_config {
    subnet_ids = data.aws_subnets.default.ids

  }

  depends_on = [ aws_iam_role_policy_attachment.demo-AmazonEKSClusterPolicy,
  aws_iam_role_policy_attachment.demo-Amazonservice_Policy
  ]
}

resource "aws_eks_node_group" "aws-eks-node-group"  {
  cluster_name    = aws_eks_cluster.demo.name
  node_group_name = "aws-eks-node-group"
  node_role_arn   = aws_iam_role.eks-cluster-nodes-demo.arn
  subnet_ids      = data.aws_subnets.default.ids

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
 }

  update_config {
    max_unavailable = var.max_unavailable
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.nodes-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.nodes-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.nodes-AmazonEC2ContainerRegistryReadOnly 

  ]
}