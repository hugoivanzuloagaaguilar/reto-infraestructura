terraform {

  backend "s3" {
    bucket = "entorno-terraform"
    key    = "compilaciones/cluster_eks_reto.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "eks" {
  source  = "punkerside/eks/aws"
  version = "0.0.5"

  name                    = var.name
  eks_version             = var.eks_version
  desired_size            = var.desired_size
  max_size                = var.max_size
  min_size                = var.min_size
  instance_types          = [var.instance_types]
  disk_size               = var.disk_size
  ami_type                = var.ami_type
  force_update_version    = true
  endpoint_private_access = false
  endpoint_public_access  = true
  subnet_private_ids      = var.subnet_private_ids
  subnet_public_ids       = var.subnet_public_ids
}
