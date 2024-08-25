terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.61"
    }
  }
   backend "s3" {
    bucket = "remote-state-prathyu-bucket"
    key    = "terraform-aws-eks-EKS"
    region = "us-east-1"
    dynamodb_table  = "s3-remote-state-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}