
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket = "dsoaws-remote-state"
    key    = "multi-demo" # so here keys must be not for the same for all, u have to set name as per the requirement 
    region = "us-east-1"
    use_lockfile = true 
    encrypt = true
  }
}


provider "aws" {
  region = "us-east-1"
  alias = "dev"
  profile = "dev-sri" # value lo name mana istum 
}

provider "aws" {
  region = "us-east-1"
  alias = "dev"
  profile = "prod-sri"
}