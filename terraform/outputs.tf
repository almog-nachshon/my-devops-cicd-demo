output "cluster_endpoint" {
  description = "URL for the EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}
