terraform {
  required_version = "~> 1.2"
  required_providers {
    aws = {
      version = "~> 4.5"
    }
  }
  backend "s3" {
    key = "security-group.tfstate"
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = local.bucket
    key    = "env:/${terraform.workspace}/network.tfstate"
    region = var.region
  }
}

provider "aws" {
  region = var.region
}