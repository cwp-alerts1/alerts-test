
resource "aws_security_group" "ES" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 9200
    to_port     = 9200
    protocol    = "tcp"
  }
}
