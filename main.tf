provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "actions" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name        = "Class31"
    Team        = "DevOps"
    #Environment = "Prod"
  }
}

terraform {
  #required_version = "1.4.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.62.0" # Optional but recommended in production
    }
  }
  backend "s3" {
    bucket = "daleydemo2"
    key    = "./prod/terraform.tfstate"
    region = "us-east-1"
  }
}

