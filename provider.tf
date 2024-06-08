terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  # State-data-file storage: type and path. S3 bucket and DynamoDB table must be exist on AWS Account
  backend "s3" {
    bucket                      = "andresrb.tfstates"
    key                         = "githubrunners/githubrunners.tfstate"
    encrypt                     = true
    region                      = "us-east-1"
    shared_credentials_files    = ["C:\\Users\\sql.programador29\\.aws\\credentials"]
    profile                     = "default"
    dynamodb_table              = "tfstate_githubrunners"
  }
}

# AWS Provider
provider "aws" {
  shared_config_files      = ["C:\\Users\\sql.programador29\\.aws\\config"]
  shared_credentials_files = ["C:\\Users\\sql.programador29\\.aws\\credentials"]
  profile                  = "default"
  region                   = "us-east-1" 
}