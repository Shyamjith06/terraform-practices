provider "aws" {
region="us-east-2"
access_key=var.access_key
secret_key=var.secret_key
}
resource "aws_instance" "myec2" {
ami=var.ami[1]
instance_type=var.instancetype[2]
tags = {
name=var.name[count.index]
}
count=3
}
