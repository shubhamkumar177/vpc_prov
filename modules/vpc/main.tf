resource "aws_vpc" "my-vpc" {    # modify the resource name if required
cidr_block = "10.0.0.0/16"       # modify this value to a CIDR block range that is appropriate for your specific use case.
tags = {
Name = "my-vpc" 
Enviroment = "dev"     
}
}

output "vpc" {
value = aws_vpc.my-vpc.id        # modify the resource name same as above.
}
