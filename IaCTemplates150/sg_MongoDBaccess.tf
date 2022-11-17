
resource "aws_security_group" "MongoDB" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
  }
}
