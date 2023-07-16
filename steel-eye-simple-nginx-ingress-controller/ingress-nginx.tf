# You MUST have an EKS cluster already existing to run ingress Nginx on it
module "ingress-nginx" {
  # note update the source link with the required version
  source     = "./ingress"
  cluster_id = module.public_eks_cluster.clusterName
}
