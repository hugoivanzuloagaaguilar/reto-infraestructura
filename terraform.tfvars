aws_region        = "us-east-1"
aws_access_key    = "AKIAVQP4YBXO7VI6LOUA"
aws_secret_key    = "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"

name = "reto-infraestructura"
eks_version = "1.23"
desired_size = 1
max_size = 2
min_size = 1
instance_types = ["t2.large"]
disk_size = 30
ami_type = "AL2_x86_64"
environment = "dev"
cidr = "10.0.0.0/16"
azs             = ["us-east-1a", "us-east-1b"]
private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]
public_subnets  = ["10.0.64.0/19", "10.0.96.0/19"]

