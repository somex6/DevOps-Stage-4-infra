module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name          = var.sg-name
  description   = var.description
  vpc_id        = module.vpc.vpc_id
  ingress_rules = var.ingress_rules

  tags = var.tags
}


module "security-group-tes" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name          = "tset-sg"
  description   = var.description
  vpc_id        = module.vpc.vpc_id
  ingress_rules = var.ingress_rules

  tags = var.tags
}