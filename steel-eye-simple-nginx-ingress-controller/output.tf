output "eks_cluster_id" {
  description = "Amazon EKS Cluster Name"
  value       = module.public_eks_cluster.clusterName
}

output "vpc_id" {
  description = "ID of the VPC associated with your cluster."
  value       = module.public_eks_cluster.vpc_id
}

output "k8s_service_ingress_elb" {
  value=module.ingress-nginx.k8s_service_ingress_elb
}
