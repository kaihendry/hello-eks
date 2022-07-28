terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = local.region
  default_tags {
    tags = {
      Source = "https://github.com/kaihendry/hello-eks"
    }
  }
}

