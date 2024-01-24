terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.32.0"
    }
  }

  backend "s3" {
    key    = "state/terraform.tfstate"
  }

  required_version = "~> 1.3"
}

