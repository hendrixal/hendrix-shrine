Terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.7"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "SHRINE_Hub" {
  ami           = "ami-05e3194f21be6de4f"
  instance_type = "t2.medium"

  tags = {
    Name = "Shrine 3.1 hub 2"
  }
}

resource "aws_instance" "SHRINE_Downstream_Node" {
  ami           = "ami-0d778bf440c128591"
  instance_type = "t2.medium"

  tags = {
    Name = "Shrine 3.1 DownNode 2"
  }
}

resource "aws_instance" "SHRINE_Hub_i2b2" {
  ami           = "ami-070241b609bbf42df"
  instance_type = "t2.medium"

  tags = {
    Name = "i2b2 1.7.12a Hub"
  }
}

resource "aws_instance" "SHRINE_Downstream_i2b2" {
  ami           = "ami-070241b609bbf42df"
  instance_type = "t2.medium"

  tags = {
    Name = "i2b2 1.7.12a DownNode 2"
  } 
}