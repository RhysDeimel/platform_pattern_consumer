## Auto generated terraform.tf ##

terraform {
  required_version = ">=1.9.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=4.61"
    }
  }

  backend "s3" {
    bucket         = "tf-backend-444455556666-ap-southeast-2"
    dynamodb_table = "tf-backend-444455556666"
    encrypt        = "true"
    key            = "ap-southeast-2/prod/webserver"
    region         = "ap-southeast-2"
  }
}

provider "aws" {
  allowed_account_ids = ["444455556666"]
  region              = "us-east-1"

  default_tags {
    tags = {
      managed_by = "Terraform"
      git_repo = "RhysDeimel/platform_pattern_consumer"
      git_source = "accounts/prod/us-east-1/prod/webserver"
      
    }
  }
}
