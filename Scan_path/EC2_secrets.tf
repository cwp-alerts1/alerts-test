resource "aws_instance" "web" {
    ami           = "ami-830c94e3"
    instance_type = "t2.micro"
    user_data = "access_key=123456ABCDEFGHIJZTLA and secret_key=AAAaa+Aa4AAaAA6aAkA0Ad+Aa8aA1aaaAAAaAaA"
    ingress_cidr_blocks = ["0.0.0.0/16"]
    tags = {
    Name = "ExampleAppServerInstance122"
   } 
   
}
