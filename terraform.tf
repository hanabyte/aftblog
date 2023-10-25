terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "< 5.0.0"
    }
  }
  backend "s3" {
    bucket = "terraform-state-aft-blog"
    key    = "us-east-1/state"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
