module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"

  name    = "demo-vpc-${var.env}"
  cidr    = "10.0.0.0/16"
  azs     = var.availability_zones

  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  enable_nat_gateway = true
  single_nat_gateway = true
  tags = {
    Environment = var.env
  }
}
