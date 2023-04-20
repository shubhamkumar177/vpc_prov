# This script is to create aws_nat_gateway

resource "aws_eip" "nat_eip_1" {     # modify the eip resource name if required
  vpc = true
}


resource "aws_nat_gateway" "nat-gateway-1a" {  # modify the <nat-gateway-1a> resource name if required
subnet_id = var.subnet_id
allocation_id = aws_eip.nat_eip_1.id   # modify the eip resource name same as above
tags = {
Name = "nat-gateway-1a"
Enviroment = "dev"
}
}
variable "subnet_id" {
type = string
}

output "nat-gateway-1a-id" {
value = aws_nat_gateway.nat-gateway-1a.id       # modify the <nat-gateway-1a> resource name same as above
}
