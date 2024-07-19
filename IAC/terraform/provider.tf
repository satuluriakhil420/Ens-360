terraform {
  backend "s3" {
    bucket         = "sentrics-terraform"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform"
    encrypt        = true
  }
}

provider "aws" {
  region           = "us-west-1"
}
