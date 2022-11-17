
resource "aws_security_group" "ES1" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 9300
    to_port     = 9300
    protocol    = "tcp"
  }
}
