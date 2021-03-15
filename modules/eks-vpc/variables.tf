variable "eks_vpc_cidr" {
  type = string
  
}

variable "eks_private_subnets_list" {
  type = list(string)
  
}

variable "eks_public_subnets_list" {
  type = list(string)
  
}

variable "clusters_name" {
  type = string
  
}

variable "common_tags" {
  type = map(string)
  
}