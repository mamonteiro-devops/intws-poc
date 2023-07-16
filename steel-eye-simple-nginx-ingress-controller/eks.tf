module "public_eks_cluster" {
  source         = "./eks"
  vpc_name       = "steel-eye-vpc"
  cluster_name   = "steel-eye-eks"
  desired_size   = 3
  max_size       = 4
  min_size       = 1
  instance_types = ["t3.medium"]
}