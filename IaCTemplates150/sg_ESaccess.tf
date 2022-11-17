
resource "aws_security_group" "ES2" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 7992
    to_port     = 7993
    protocol    = "tcp"
  }
}
