terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXQE74HCJBCO7IL7F"
  secret_key = "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"
}

module "website_s3_bucket" {
  source = "./modules/s3-static-bucket"

  bucket_name = "cloudjunction20222in"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}