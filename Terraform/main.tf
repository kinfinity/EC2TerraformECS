provider "aws" {
  region  = "eu-west-3"
}

# Setup Resources / Modules

## ECR  
module "ecr" {
  source  = "./modules/ecr"
  env     = "dev"
}
