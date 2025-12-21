
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.26.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

# $ terraform console
# > toset ([ "mysql", "sri"])
# toset([
#   "mysql", 
#   "sri",
# ])
# >


# so here list lo vunna items manaki map loki convert ayyindhi like that above, so vachhina o/p anedhi each.value ani refer cheyali or else anukovali "mysql" so idhi each.value