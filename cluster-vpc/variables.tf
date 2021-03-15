variable "aws_region" {
  type = string
}

variable "clusters_name" {
  type = string
}

variable "vpc_block" {
  type = string
}

variable "public_subnets_list" {
  type = list(string)
}

variable "private_subnets_list" {
  type = list(string)
}