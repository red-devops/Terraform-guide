terraform {
  required_version = "~> 1.2"
  backend "s3" {
    key = "platform-engineering/cicd-agent.tfstate"
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = local.bucket
    key    = "platform-engineering/network.tfstate"
    region = var.region
  }
}

provider "aws" {
  region = var.region
}