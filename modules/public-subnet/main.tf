resource "aws_subnet" "public-subnet-1a" {
cidr_block = "10.0.0.0/24"                          # Change the cidr based on your requirement
availability_zone = "ap-south-1a"
vpc_id = var.vpc_id
tags = {
Name = "public-subnet-1a"
Enviroment = "dev"
}
}

resource "aws_subnet" "public-subnet-1b" {
cidr_block = "10.0.1.0/24"                          # Change the cidr based on your requirement
availability_zone = "ap-south-1b"
vpc_id = var.vpc_id
tags = {
Name = "public-subnet-1b"
Enviroment = "dev"
}
}

output "public-subnet-1a" {
value = aws_subnet.public-subnet-1a.id
}

output "public-subnet-1b" {                         
value = aws_subnet.public-subnet-1b.id
}

variable "vpc_id" {
type = string
} 
