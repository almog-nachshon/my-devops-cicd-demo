# provider "aws" {
#   region = var.aws_region
# }

# data "aws_eks_cluster" "cluster" {
#   depends_on = [module.eks]
#   name       = module.eks.cluster_name
# }


# data "aws_eks_cluster_auth" "cluster" {
#   depends_on = [module.eks]
#   name       = module.eks.cluster_name
# }


# provider "kubernetes" {
#   host                   = data.aws_eks_cluster.cluster.endpoint
#   cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
#   token                  = data.aws_eks_cluster_auth.cluster.token
# }

# provider "helm" {
#   kubernetes {
#     host                   = data.aws_eks_cluster.cluster.endpoint
#     cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
#     token                  = data.aws_eks_cluster_auth.cluster.token
#   }
# }