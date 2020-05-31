# AWS VPC Terraform module

Terraform module which creates VPC resources on AWS.

These types of resources are supported:

* [VPC](https://www.terraform.io/docs/providers/aws/r/vpc.html)
* [Subnet](https://www.terraform.io/docs/providers/aws/r/subnet.html)
* [Key Pair](https://www.terraform.io/docs/providers/aws/r/key_pair.html)
* [Route](https://www.terraform.io/docs/providers/aws/r/route.html)
* [Route table](https://www.terraform.io/docs/providers/aws/r/route_table.html)
* [Internet Gateway](https://www.terraform.io/docs/providers/aws/r/internet_gateway.html)
* [Network ACL](https://www.terraform.io/docs/providers/aws/r/network_acl.html)
* [Security Group](https://www.terraform.io/docs/providers/aws/r/security_group.html)
* [EC2 Instance](https://www.terraform.io/docs/providers/aws/r/instance.html)
* [VPN Gateway](https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html)
* [VPC Flow Log](https://www.terraform.io/docs/providers/aws/r/flow_log.html)
* [VPC Endpoint](https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html):


## Terraform versions

Terraform 0.12. Pin module version to `~> v2.0`. Submit pull-requests to `master` branch.

## Requirements

* Terraform Binary
* Access_key ( for programmatic access: configure in .tfvars file)
* Secret_key ( for programmatic access: configure in .tfvars file)
* Private Key ( To access ec2 instances: Generate .pem file and have locally and configure in .tfvars file )
* Public Key ( To access ec2 instances: Generate .key file and have locally and configure in .tfvars file )


## Installation

To create a VPC on aws using terraform code in this repository, variables need to be configured as per the one’s own need. Private and public key pair need not be created on aws console, keypair is created using teraform
however private.pem and public.key needs to be created and have locally to be configured in .tfvars file.


##  Variables files: 


* Terraform.tfvars : vars that overwrites default values
* Varables.tf: contains default values of vars


##  Commands :

* terraform init
* terraform plan -out aws_vpc.plan
* terraform apply aws_vpc.plan
