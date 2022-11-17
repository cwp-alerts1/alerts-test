
resource "aws_security_group" "Hadoop" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
  }
}
