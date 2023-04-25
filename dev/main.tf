terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb-postgres"
  engine               = "aurora-postgresql"
  engine_version       = "13.9"
  instance_class       = "db.r6g.large"
  username             = "foo"
  password             = "foobarbaz"
  skip_final_snapshot  = true
}

