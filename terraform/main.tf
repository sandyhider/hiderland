terraform {

#   cloud {
#     organization = "hiderland"

#     workspaces {
#       name = "hiderland"
#     }
#   }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.89.0"
    }
    improvmx = {
      source  = "issyl0/improvmx"
    }
  }

}

provider "aws" {
  region = "us-east-1"
  profile = "mcbain68-terraform"
}

provider "improvmx" {
  token = "sk_a90c617fa91c47e9b8e0709d5ace95c6"
}