
resource "aws_security_group" "CassandraOps" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 61621
    to_port     = 61621
    protocol    = "tcp"
  }
}
