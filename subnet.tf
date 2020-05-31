# create the Subnet
resource "aws_subnet" "My_VPC_Public_Subnet" {
  vpc_id                  = aws_vpc.My_VPC.id
  cidr_block              = var.pubSubnetCIDRblock
  map_public_ip_on_launch = var.mapPubPublicIP 
  availability_zone       = var.availabilityZone
tags = {
   Name = var.vpcPubSubnetName
}
}
resource "aws_subnet" "My_VPC_Private_Subnet" {
  vpc_id                  = aws_vpc.My_VPC.id
  cidr_block              = var.privSubnetCIDRblock
  map_public_ip_on_launch = var.mapPrivPublicIP 
  availability_zone       = var.availabilityZone
tags = {
   Name = var.vpcPrivSubnetName
}
}