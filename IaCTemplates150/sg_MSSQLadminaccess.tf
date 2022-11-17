
resource "aws_security_group" "MSSQLadmin1" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 1434
    to_port     = 1434
    protocol    = "tcp"
  }
}
