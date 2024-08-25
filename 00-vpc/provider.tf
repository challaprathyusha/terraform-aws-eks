terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "remote-state-prathyu-bucket"
    key    = "terraform-aws-eks-VPC"
    region = "us-east-1"
    dynamodb_table  = "s3-remote-state-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}