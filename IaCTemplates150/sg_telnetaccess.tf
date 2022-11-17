
resource "aws_security_group" "telnetaccess" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 23
    to_port     = 23
    protocol    = "tcp"
  }
}
