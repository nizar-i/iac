module "poc_cluster" {
  source        = "./cluster"
  cluster_name  = var.cluster_name
  region = var.region
}

output "region" {
  description = "AWS region"
  value       = module.poc_cluster.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.poc_cluster.cluster_name
}
