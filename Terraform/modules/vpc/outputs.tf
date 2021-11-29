# VPC
data "aws_vpc" "vpc_selected" {
  tags = {
    Name = "${var.env}/${var.name}"
  }
  depends_on = [
    aws_vpc.main
  ]
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = data.aws_vpc.vpc_selected.id
}

output "vpc_cidr_block" {
  description = "vpc cidr"
  value       = data.aws_vpc.vpc_selected.cidr_block
}

# Subnet
data "aws_subnet" "subnet_selected1" {
  vpc_id = data.aws_vpc.vpc_selected.id
  tags = {
    Name =  "${var.env}-${var.name}-pub-subnet1"
  }
  depends_on = [
    aws_subnet.pub_subnet1
  ]
} 

output "subnet_id1" {
  description = "subnet id"
  value       = data.aws_subnet.subnet_selected1.id
}
data "aws_subnet" "subnet_selected2" {
  vpc_id = data.aws_vpc.vpc_selected.id
  tags = {
    Name =  "${var.env}-${var.name}-pub-subnet2"
  }
  depends_on = [
    aws_subnet.pub_subnet2
  ]
} 

output "subnet_id2" {
  description = "subnet id"
  value       = data.aws_subnet.subnet_selected2.id
}

# IG
data "aws_internet_gateway" "default" {
  tags = {
      Name =  "${var.env}-${var.name}-ig"
  }
  depends_on = [
    aws_internet_gateway.internet_gateway
  ]
}

output "igw_id" {
  description = "The ID of the VPC"
  value       = data.aws_internet_gateway.default.id
}
