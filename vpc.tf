provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA5KOY4NEOM3D3TV5R"
  secret_key = "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"
}

resource "aws_vpc" "demo" {
  cidr_block       = "66.66.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc"
  }
}
resource "aws_subnet" "demo1"
vpc_id = ${"aws_vpc.demo.id}
cidr_block = "66.66.1.0./28"
  
  tags = {
   Name = "subnet1"
   }
}
resource "aws_subnet" "demo1"
vpc_id = ${"aws_vpc.demo.id}
cidr_block = "66.66.1.16./28"
  
  tags = {
   Name = "subnet2"
   }
}