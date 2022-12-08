terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}
resource "aws_s3_bucket" "examplebucketver" {
  bucket = "examplebuckettftest"
  acl    = "public-read-write"
  versioning {
    enabled = false
  }
}

