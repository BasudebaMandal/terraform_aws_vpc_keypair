###############  Date   ###############

data "aws_ami" "aws_image" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

### Aws ec2 instance creation

resource "aws_instance" "public-ec2" {
  ami                    = data.aws_ami.aws_image.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.My_VPC_Public_Subnet.id
  vpc_security_group_ids = [aws_security_group.Pub_Sub_Security_Group.id]
  key_name               = "${aws_key_pair.vpc_key.key_name}"
  
  connection {
    type           = "ssh"
    host           = self.public_ip
    user           = "ec2-user"
    private_key    = file(var.private_key_path)
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install nginx -y",
      "sudo service nginx start"
    ]
  }

}


resource "aws_instance" "private-ec2" {
  ami                    = data.aws_ami.aws_image.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.My_VPC_Private_Subnet.id
  vpc_security_group_ids = [aws_security_group.Priv_Sub_Security_Group.id]
  key_name               = "${aws_key_pair.vpc_key.key_name}"

}


######## Output ############

output "aws_instance_public_dns" {
    value = aws_instance.public-ec2.public_dns
}