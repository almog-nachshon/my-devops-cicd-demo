module "eks" {
  source                     = "terraform-aws-modules/eks/aws"
  version                    = "19.0.0"

  cluster_name               = "demo-eks-${var.env}"
  cluster_version            = "1.33"
  vpc_id                     = module.vpc.vpc_id
  subnet_ids                 = module.vpc.private_subnets

  # Restrict API endpoint to private subnets
  cluster_endpoint_public_access        = false
  cluster_endpoint_public_access_cidrs = ["83.130.129.15/32"]


  cluster_endpoint_private_access = true
  enable_irsa                = true


  # Managed node groups definition
  eks_managed_node_groups = {
    standard = {
      desired_capacity = 2
      max_capacity     = 4
      min_capacity     = 1
      instance_types   = ["t3.medium"]
      key_name         = null
      additional_tags  = {
        Environment = var.env
      }
    }
  }

  tags = {
    Environment = var.env
  }
}
