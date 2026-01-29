terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = " ~> 5.0"
      }
    }
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "durga-prasad"
}

data "aws_s3_bucket_object" "myobject" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "myobject"
} 

variable "bucket_name" {
  type = string
  description = "My variable"
  default = "my_default_bucket"
}


variable "instance_type" {
  type = string
  description = "My variable"
  default = "t2.medium"
}

resource "aws_instance" "exmaple" {
    ami = ""
    instance_type = var.instance_type
    tags = {
        Name = "test"
    }
}

locals {
  envionment = "dev"
  app_name = "test" 
}

tags = {
    dev.envionment
}


module "mymodule" {
    source = "./mod_example"
}