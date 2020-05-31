# Create the Route Table
resource "aws_route_table" "My_VPC_Route_Table" {
 vpc_id = aws_vpc.My_VPC.id
 tags = {
        Name = var.rtName
}
}

# Create the Internet Access
resource "aws_route" "My_VPC_internet_access" {
  route_table_id         = aws_route_table.My_VPC_Route_Table.id
  destination_cidr_block = var.destinationCIDRblock
  gateway_id             = aws_internet_gateway.My_VPC_GW.id
}

# Associate the Route Table with the Subnet
resource "aws_route_table_association" "My_Route_Table_association" {
  subnet_id      = aws_subnet.My_VPC_Public_Subnet.id
  route_table_id = aws_route_table.My_VPC_Route_Table.id
}