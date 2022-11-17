
resource "aws_security_group" "MSSQLadmin" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
  }
}
