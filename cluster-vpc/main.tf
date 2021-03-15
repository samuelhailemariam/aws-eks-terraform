locals {
  common_tags = {
    ManagedBy = "terraform"
  }
}

module "vpc" {
  source                   = "../modules/eks-vpc"
  clusters_name            = var.clusters_name
  eks_vpc_cidr             = var.vpc_block
  eks_public_subnets_list  = var.public_subnets_list
  eks_private_subnets_list = var.private_subnets_list
  common_tags              = local.common_tags
}