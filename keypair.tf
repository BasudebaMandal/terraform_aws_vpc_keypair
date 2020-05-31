resource "aws_key_pair" "vpc_key" {
  key_name   = "publickey"
  public_key = "${file(var.public_key_path)}"
}