data "aws_route53_zone" "dns_zone" {
  name         = var.dns_zone
  private_zone = false
}

resource "aws_route53_record" "stage_4_route" {
  zone_id = data.aws_route53_zone.dns_zone.zone_id
  name    = var.record_name
  type    = var.type
  ttl     = var.ttl
  records = [module.ec2_instance.public_ip]
}

