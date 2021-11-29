terraform{
    backend "s3" {
        bucket  = "ec2-terraform-ecs-storage"
        encrypt = true
        key     = "ec2-terraform-ecs/.tfstate"
        region  = "eu-west-1"
    }
    
}