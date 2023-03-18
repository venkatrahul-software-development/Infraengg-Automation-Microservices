# This file specifices the cloud provider to be used along with the access credentials which are retreived via the AWS config file

provider "aws" {
  profile = "default" # Generally we have customized profile's in production environemnts
  region  = "us-east-1"
}

# This is for specifying the verion of terraform to be used

terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72"
    }
  }
}