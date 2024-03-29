resource "aws_security_group" "botit_securty_group" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id
  ingress {
    from_port   = 22 // Allow ssh traffic
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  // Allow traffic from any IPv4 address
  }

  ingress {
    from_port   = 80 // Allow App traffic
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  // Allow traffic from any IPv4 address
  }

    // Define egress rule to allow all traffic
    egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"        // "-1" denotes all protocols
    cidr_blocks     = ["0.0.0.0/0"]  // Allow traffic to any IPv4 address
  }
  tags = {
    Name = var.sg_name
  }
}

