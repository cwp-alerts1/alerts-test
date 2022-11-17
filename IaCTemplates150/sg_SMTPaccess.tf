
resource "aws_security_group" "SMTPaccess" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 25
    to_port     = 25
    protocol    = "tcp"
  }
}
