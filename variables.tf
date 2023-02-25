variable "aws_region" {
  type        = string
  default    = "us-east-1"
}

variable "aws_access_key" {
  type        = string
  description = "AWS access_key"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret_key"
}

variable "name" {
  description = "Nombre asignado a todos los recursos creados por esta plantilla."
  type        = string
  default     = null
}

variable "eks_version" {
  description = "Version de Kubernetes"
  type        = string
  default     = "1.21"
}

variable "desired_size" {
  description = "Numero deseado de nodos"
  type        = string
  default     = 2
}

variable "max_size" {
  description = "Numero maximo de nodos"
  type        = string
  default     = 2
}

variable "min_size" {
  description = "Numero minimo de nodos"
  type        = string
  default     = 1
}

variable "instance_types" {
  description = "Tipo de instancia de los nodos"
  type        = list(string)
  default     = ["t2.large"]
}

variable "disk_size" {
  description = "Tamaño de disco asociado a los nodos"
  type        = string
  default     = 30
}

variable "ami_type" {
  description = "Tipo de AMI de los nodos"
  type        = string
  default     = "AL2_x86_64"
}

variable "environment " {
  type        = string
  default     = "dev"
}

variable "cidr" {
  type        = string
  default     = ""
}

variable "azs" {
  type        = list(string)
  default     = []
}
variable "private_subnets" {
  type        = list(string)
  default     = []
}
variable "public_subnets" {
  type        = list(string)
  default     = []
}
