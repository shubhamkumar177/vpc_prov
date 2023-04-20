
resource "aws_subnet" "private-subnet-1a" {  # modify the subnet resource name if required
cidr_block = "10.0.2.0/24"                   # modify this value to a CIDR block range that is appropriate for your specific use case.
availability_zone = "ap-south-1a"            # modify the availability_zone if required   
vpc_id = var.vpc_id
tags = {
Name = "private-subnet-1a"
Enviroment = "dev"
}
}

resource "aws_subnet" "private-subnet-1b" {   # modify the subnet resource name if required
cidr_block = "10.0.3.0/24"                    # modify this value to a CIDR block range that is appropriate for your specific use case.
availability_zone = "ap-south-1b"             # modify the availability_zone if required
vpc_id = var.vpc_id
tags = {
Name = "private-subnet-1b"
Enviroment = "dev"
}
}

variable "vpc_id" {
type = string
}

output "private-subnet-1a" {
value = aws_subnet.private-subnet-1a.id           # modify the resource name same as above
}

output "private-subnet-1b" {
value = aws_subnet.private-subnet-1b.id           # modify the resource name same as above
}


