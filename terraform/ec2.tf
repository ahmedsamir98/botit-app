resource "aws_instance" "botit_ec2" {
  ami                     = var.ami
  instance_type           = var.instance_type
  tags = {
    Name = var.name_of_ec2
  }
  key_name = aws_key_pair.ec2_key.id
  user_data = file(var.user_data_path)
  vpc_security_group_ids = [ aws_security_group.botit_securty_group.id ]
}

resource "aws_key_pair" "ec2_key" {
  key_name   = "ec2_key"
  public_key = file(var.public_key_name)
}