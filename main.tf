terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.11.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_iam_user" "lbi" {
  name = "lbUser"
  tags = {
	"Inactivate" = "True"
}
}

resource "aws_s3_bucket" "checkovBucket" {
  bucket = "checkov15232176"
}
