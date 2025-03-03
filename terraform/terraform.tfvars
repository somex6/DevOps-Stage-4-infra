tags = { Name = "hng-stage-4" }

#### Networking ####
azs                  = ["us-east-1a"]
cidr                 = "10.20.0.0/16"
public_subnets       = ["10.20.30.0/24"]
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
dns_zone    = "hngprog.biz"
record_name = "stage-4.hngprog.biz"
type        = "A"
ttl         = 300

####  ACM ####
subject_alternative_names = ["stage-4.hngprog.biz"]
validation_method         = "DNS"