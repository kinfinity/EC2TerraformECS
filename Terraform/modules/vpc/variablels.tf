variable "name" {
  description = "Name to be used"
  type        = string
  default     = "ec2Tecs"
}

variable "project_name" {
  description = "Terraform Project Name"
  type        = string
  default     = "EC2TerraformECS"
}

variable "env" {
  description = "Environment"
  type        = string
}

variable "cidr_block" {
  description = "VPC CIDR Block to use"
  default = "10.23.0.0/16"
}

variable "subnet_cidr_block1" {
  description = "VPC CIDR Block to use"
  default = "10.23.0.0/20"
}

variable "subnet_cidr_block2" {
  description = "VPC CIDR Block to use"
  default = "10.23.16.0/20"
}