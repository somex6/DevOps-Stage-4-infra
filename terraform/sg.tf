# module "security-group" {
#   source  = "terraform-aws-modules/security-group/aws"
#   version = "5.1.0"

#   name          = var.sg-name
#   description   = var.description
#   vpc_id        = module.vpc.vpc_id
#   ingress_rules = var.ingress_rules

#   tags = var.tags
# }


resource "aws_security_group" "ingress" {
  name        = "allow tcp"
  description = "Allow inbound"
  vpc_id      = module.vpc.vpc_id
  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}