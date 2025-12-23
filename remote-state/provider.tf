# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "6.16.0"
#     }
#   }


# # terraform {
# #   backend "s3" {
# #     bucket = "mybucket"
# #     key    = "path/to/my/key"
# #     region = "us-east-1"
# #   }
# # }

#   backend "s3" {
#     bucket = "dsoaws-remote-state"
#     key    = "remote-state-demo" # key must be need set for storing state file ikkada ichhina name tho state file will be storing
#     region = "us-east-1"
#     use_lockfile = true  # it used to lock the state file when someone useing same time
#     #dynamodb_table = "terraform-locks"
#     encrypt = true
#   }
# }

# provider "aws" {
#   region = "us-east-1"
# }

# # so here backend ni configure cheyakapothe state file ni local lo peduthundhi..

# # adhe backed ni configure cheste adhi velli s3 bucket lo store avuthundhi...


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket = "dsoaws-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}