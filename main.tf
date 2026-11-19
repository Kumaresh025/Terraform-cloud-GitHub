terraform {
    required_version = "~> 1.17.1" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.73.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Kumarinfra" {
	ami = "ami-0c2b8ca1dad447f8a" 
	instance_type = "t3.micro"
}
