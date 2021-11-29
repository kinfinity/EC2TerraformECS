resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.env}/${var.name}"
    Environment   = "${var.env}"
    Project_name = "${var.project_name}"
  }
}