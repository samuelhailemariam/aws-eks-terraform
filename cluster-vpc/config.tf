terraform {
  backend "s3" {
    bucket         = "eksclusters-vpc-terraform-state"
    key            = "eksclusters-vpc.tfstate"
    region         = "us-west-2"
    dynamodb_table = "eksclusters-vpc-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.31.0"
    }
  }
  required_version = "~> 0.14.5"
}