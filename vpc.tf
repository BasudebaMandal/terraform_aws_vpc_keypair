# create the VPC
resource "aws_vpc" "My_VPC" {
  cidr_block           = var.vpcCIDRblock
  instance_tenancy     = var.vpcInstanceTenancy 
  enable_dns_support   = var.vpcDnsSupport 
  enable_dns_hostnames = var.vpcDnsHostName
tags = {
    Name = var.vpcName
}
}