variable "aws_region" {
  type        = string
  description = "The region to deploy resources to"
  default     = "ap-northeast-1"
}

variable "default_tags" {
  type        = map(string)
  description = "Default tags to apply to all resources"
  default = {
    project = "exploring-eks-with-karpenter"
  }
}

variable "name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "myapp-eks"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "k8s_version" {
  description = "Kubernetes version to use for the EKS cluster"
  type        = string
  default     = "1.32"
}

variable "private_subnet_cidr_blocks" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "public_subnet_cidr_blocks" {
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "intra_subnet_cidr_blocks" {
  default = ["10.0.104.0/24", "10.0.105.0/24", "10.0.106.0/24"]
}
