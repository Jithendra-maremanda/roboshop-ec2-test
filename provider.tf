terraform {
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = "~> 5.98.0"
    }
  }

  backend "s3" {
    bucket = "roboshop-terraform-state"
    key    = "ec2module-test"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}

