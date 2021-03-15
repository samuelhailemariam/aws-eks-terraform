resource "aws_s3_bucket" "clusters_tf_state_s3_bucket" {
  bucket = "${var.clusters_name}-terraform-state"
  acl    = "private"
  versioning {
    enabled = false
  }
  lifecycle {
    prevent_destroy = false
  }
  tags = {
    Name      = "${var.clusters_name} S3 Remote Terraform State Store"
    ManagedBy = "terraform"
  }
}

resource "aws_s3_bucket" "clusters_vpc_tf_state_s3_bucket" {
  bucket = "${var.clusters_name}-vpc-terraform-state"
  acl    = "private"
  versioning {
    enabled = false
  }
  lifecycle {
    prevent_destroy = false
  }
  tags = {
    Name      = "${var.clusters_name} VPC S3 Remote Terraform State Store"
    ManagedBy = "terraform"
  }
}