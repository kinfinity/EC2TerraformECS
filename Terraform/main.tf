provider "aws" {
  region  = "eu-west-3"
}

# Setup Resources / Modules

## ECR  
module "ecr" {
  source  = "./modules/ecr"
  env     = "dev"
}

## VPC
module "dg-vpc" {
  source  = "./modules/vpc"
  env     = "dev"
}
  