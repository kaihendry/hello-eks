terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

data "external" "git_describe" {
  program = ["${path.module}/git-describe.sh"]
}

provider "aws" {
  region = local.region
  default_tags {
    tags = {
      Source = "https://github.com/kaihendry/hello-eks"
      Version = data.external.git_describe.result["version"]
    }
  }
}

