# Create the Security Group
resource "aws_security_group" "Pub_Sub_Security_Group" {
  vpc_id       = aws_vpc.My_VPC.id
  name         = var.pubSecurityGroupGName
  description  = "Public Subnet Security Group"
  
  # allow ingress of port 22
  ingress {
    cidr_blocks = var.ingressCIDRblock  
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  } 
    # allow ingress of port 80
  ingress {
    cidr_blocks = var.ingressCIDRblock  
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  } 
  
  # allow egress of all ports
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
tags = {
   Name = var.pubSecurityGroupGName
   Description = "Public Subnet Security Group"
}
}

resource "aws_security_group" "Priv_Sub_Security_Group" {
  vpc_id       = aws_vpc.My_VPC.id
  name         = var.privSecurityGroupGName
  description  = "Private Subnet Security Group"
  
  # allow ingress of port 22
  ingress {
    cidr_blocks = ["${var.pubSubnetCIDRblock}"]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  } 
    # allow ingress of port 80
  ingress {
    cidr_blocks = ["${var.pubSubnetCIDRblock}"]
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }
    # allow ingress of port 1433
  ingress {
    cidr_blocks = ["${var.pubSubnetCIDRblock}"] 
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
  } 
  # allow ingress of port 3306
    ingress {
    cidr_blocks = ["${var.pubSubnetCIDRblock}"]
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
  } 
  
  # allow egress of all ports
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
tags = {
   Name = var.privSecurityGroupGName
   Description = "Private Subnet Security Group"
}
}