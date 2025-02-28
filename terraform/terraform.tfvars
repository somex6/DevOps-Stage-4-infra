tags = { Name = hng-stage-4 }

azs                  = [us-east-1a]
cidr                 = "10.20.0.0"
public_subnets       = ["10.20.30.0"]
vpc_name             = "hng-stage-4-vpc"
enable_dns_hostnames = true
enable_dns_support   = true

#### VM #####
instance_type               = "t2.medium"
key_name                    = "hng-server-key"
create_iam_instance_profile = true
vm_name                     = "hng-stage-4-server"
associate_public_ip_address = true
ami_id                      = "ami-04b4f1a9cf54c11d0"

##### SG ###########
sg-name       = "hng-stage-4-sg"
ingress_rules = ["https-443-tcp", "ssh-tcp", "http-80-tcp"]

##### DNS #########
dns_zone    = "hngprog.com"
record_name = "stage-4.hngprog.com"
type        = "A"
ttl         = 300

####  ACM ####
subject_alternative_names = ["stage-4.hngprog.com"]
validation_method         = "DNS"