variable "access_key" {}
variable "secret_key" {}
#variable "key_name" {}
variable "private_key_path" {}
variable "public_key_path" {}
variable "region" {
     default = "ap-south-1"
}
variable "availabilityZone" {
     default = "ap-south-1a"
}
variable "vpcName" {
     default = "Test1"
}
variable "vpcCIDRblock" {
    default = "10.0.0.0/16"
}
variable "vpcDnsSupport" {
    default = true
}
variable "vpcDnsHostName" {
    default = true
}
variable "vpcInstanceTenancy" {
    default = "default"
}
variable "vpcPubSubnetName" {
     default = "Test1-PubSub1"
}
variable "vpcPrivSubnetName" {
     default = "Test1-PrivSub1"
}
variable "pubSubnetCIDRblock" {
    default = "10.0.1.0/24"
}
variable "privSubnetCIDRblock" {
    default = "10.0.2.0/24"
}
variable "mapPubPublicIP" {
    default = true
}
variable "mapPrivPublicIP" {
    default = false
}
variable "pubSecurityGroupGName" {
     default = "Test1-PublicTierSG"
}
variable "privSecurityGroupGName" {
     default = "Test1-PrivateTierSG"
}
variable "destinationCIDRblock" {
    default = "0.0.0.0/0"
}
variable "ingressCIDRblock" {
    default = [ "0.0.0.0/0" ]
}
variable "egressCIDRblock" {
    default = [ "0.0.0.0/0" ]
}
variable "igName" {
     default = "Test1-ig"
}
variable "rtName" {
     default = "Test1-public-rt"
}