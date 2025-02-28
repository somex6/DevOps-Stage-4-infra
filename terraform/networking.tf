module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name           = var.vpc_name
  cidr           = var.cidr
  azs            = var.azs
  public_subnets = var.public_subnets

  tags = var.tags
}