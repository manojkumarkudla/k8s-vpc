resource "aws_eks_cluster" "demo-cluster" {
  name     = var.cluster-name
  role_arn = aws_iam_role.demo-cluster-role.arn

  vpc_config {
    security_group_ids = [aws_security_group.demo-cluster-group.id]
    subnet_ids = [aws_subnet.public-sub3.id,aws_subnet.public-sub2.id,aws_subnet.public-sub1.id]
  }

  depends_on = [
    aws_iam_role_policy_attachment.demo-cluster-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.demo-cluster-AmazonEKSServicePolicy,
  ]
}
