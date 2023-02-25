aws_region        = "us-east-1"
aws_access_key    = "AKIAVQP4YBXO7VI6LOUA"
aws_secret_key    = "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"

name = "infraestructura-eks"
eks_version = "1.21"
desired_size = "1"
max_size = "2"
min_size = "2"
instance_types = "t2.large"
force_update_version = "false"
disk_size = "30"
ami_type = "AL2_x86_64"
endpoint_private_access = "false"
endpoint_public_access = "true"
tags = "1.21
subnet_public_ids     = ["100.64.0.0/21", "100.64.24.0/21", "100.64.48.0/21"]
subnet_private_ids    = ["100.64.16.0/21", "100.64.40.0/21", "100.64.64.0/21"]
