# Configure aws provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.60"
    }
  }
}

# Configure aws provider
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
