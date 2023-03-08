terraform {
  required_version = "~> 1.2"
  backend "s3" {
    key = "network.tfstate"
  }
}

provider "aws" {
  region = var.region
}
