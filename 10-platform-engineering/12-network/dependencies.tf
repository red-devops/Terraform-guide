terraform {
  required_version = "~> 1.2"
  backend "s3" {
    key = "platform-engineering/network.tfstate"
  }
}

provider "aws" {
  region = var.region
}
