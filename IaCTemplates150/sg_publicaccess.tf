
resource "aws_security_group" "Publicaccess" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 65535
  }
}
