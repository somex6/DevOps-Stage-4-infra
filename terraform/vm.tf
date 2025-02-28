module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name                        = var.vm_name
  ami                         = var.ami_id
  create_iam_instance_profile = var.create_iam_instance_profile
  instance_type               = var.instance_type
  key_name                    = var.key_name
  vpc_security_group_ids      = [module.security-group.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = var.associate_public_ip_address

  tags = var.tags
}
