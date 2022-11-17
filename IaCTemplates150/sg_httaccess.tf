resource "aws_security_group" "example" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    to_port     = 80
    protocol    = "tcp"
  }
}
