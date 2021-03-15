aws_region = "us-west-2"
private_subnet_ids = [
  "subnet-04bd4914d51584d07",
  "subnet-02ff989381c8c2818",
  "subnet-03c231d8848a733ed",
]
public_subnet_ids = [
  "subnet-059c63d80fcaf9fcb",
  "subnet-05848136ec5a23540",
  "subnet-0030d541754f68ca6",
]
vpc_id                = "vpc-0afcecb0f8b94a406"
clusters_name_prefix  = "eksclusters"
cluster_version       = "1.18"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10