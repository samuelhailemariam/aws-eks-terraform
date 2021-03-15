# Provision AWS EKS Cluster with Terraform

1. `state` folder provides the scaffolding for persisting the terraform state to S3 and locking the state with DynamoDB tables.

2. `modules` folder provides the modules for network and cluster infrastructure

3. `cluster-vpc` folder provisions a VPC, subnets and availability zones using the modules provided

4. `eksclusters` folder provisions all the resources (AutoScaling Groups, etc...) required to set up an EKS cluster.

## Configure kubectl

- Retrieve the cluster kubeconfig file

  `aws eks --region $(terraform output -raw aws_region) update-kubeconfig --name $(terraform output -raw cluster_full_name)`

- Apply authconfig to authenticate the workers' nodes with the EKS control plane

  `$ terraform output -raw authconfig | kubectl -n kube-system create -f –`

- Ensure that the cluster worker nodes are up and in the ready state

  `$ kubectl get nodes`
