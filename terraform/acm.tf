

module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "~> 4.0"

  domain_name = var.dns_zone
  zone_id     = data.aws_route53_zone.dns_zone.zone_id
# 
  subject_alternative_names = var.subject_alternative_names

  validation_method = var.validation_method

  tags = var.tags
}