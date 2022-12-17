resource "aws_security_group" "example1" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id
  ingress {
    description      = "TLS from VPC"
    from_port        = 9200
    to_port          = 9200
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
}
