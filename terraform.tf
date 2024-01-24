terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.32.0"
    }
  }

  backend "s3" {
    bucket = "terraform"
    key    = "state/terraform.tfstate"
    region = "us-east-2"
  }

  required_version = "~> 1.3"
}

