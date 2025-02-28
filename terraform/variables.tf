##### VPC ######
variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
  default     = []
}

variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "0.0.0.0/0"
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "vpc_name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}


variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

########## VM Variable #####################
variable "instance_type" {
  description = "type of instance"
  type        = string
}

variable "key_name" {
  default     = ""
  description = "Name of key"
  type        = string
}

variable "vm_name" {
  type        = string
  description = "Name of vm to create"
}

variable "create_iam_instance_profile" {
  type        = bool
  description = "Determines whether an IAM instance profile is created or to use an existing IAM instance profile"
  default     = false
}

variable "user_data" {
  type        = string
  description = "	The user data to provide when launching the instance"
  default     = ""
}

variable "associate_public_ip_address" {
  type        = bool
  default     = false
  description = "If true, the EC2 instance will have associated public IP address"
}

variable "ami_id" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = null
}

########### SG Variable ############
variable "sg-name" {
  description = "Name of security group"
  type        = string
  default     = null
}

variable "description" {
  description = "Description of security group"
  type        = string
  default     = "Security Group managed by Terraform"
}

variable "ingress_rules" {
  description = "List of ingress rules to create by name"
  type        = list(string)
  default     = []
}

##### DNS ######
variable "dns_zone" {
  description = "name of the hosted zone."
  type        = string
  default     = ""
}

variable "record_name" {
  description = "The name of the record"
  type        = string
  default     = ""
}

variable "type" {
  description = "The record type"
  type        = string
  default     = ""
}

variable "ttl" {
  description = "The TTL of the record"
  type        = number
  default     = 0
}

##### ACM ####

variable "subject_alternative_names" {
  description = "A list of domains that should be SANs in the issued certificate"
  type        = list(string)
  default     = []
}

variable "validation_method" {
  description = "Which method to use for validation. DNS or EMAIL are valid. This parameter must not be set for certificates that were imported into ACM and then into Terraform."
  type        = string
  default     = null
}