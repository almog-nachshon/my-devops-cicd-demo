locals {
  # Your CodeBuild project's security group
  codebuild_sg_id = "sg-09bda5dd1209203c9"
}

resource "aws_security_group_rule" "allow_codebuild_to_eks_api" {
  description              = "Allow CodeBuild SG to call EKS API on 443"
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"

  # This is the EKS control-plane SG exposed by the module
  security_group_id        = module.eks.cluster_security_group_id

  # Only allow from your CodeBuild SG
  source_security_group_id = local.codebuild_sg_id
}