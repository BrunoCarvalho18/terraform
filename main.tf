terraform {
  required_version = "1.0.4"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "3.54.0"
    }
  }
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
   region = "us-east-1"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#private-bucket-w-tags
resource "aws_s3_bucket" "my-test-bucket" {
    bucket = "my-tf-test-bucket-123456789899"
    acl = "private"

    tags = {
      Name = "My Bucket"
      Environment= "Dev"
      Managedby= "Terraform"
    }
}