# VPC for EKS Cluster
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~>5.19"

  name = "${var.name}-vpc"
  cidr = var.vpc_cidr_block

  azs             = data.aws_availability_zones.azs.names
  private_subnets = var.private_subnet_cidr_blocks
  public_subnets  = var.public_subnet_cidr_blocks
  intra_subnets   = var.intra_subnet_cidr_blocks

  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
    # Tags subnets for Karpenter auto-discovery
    "karpenter.sh/discovery" = var.name
  }
  tags = var.default_tags

}