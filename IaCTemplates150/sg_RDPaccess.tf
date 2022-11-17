
resource "aws_security_group" "RDP" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 3389
    to_port     = 3389
    protocol    = "rdp"
  }
}
