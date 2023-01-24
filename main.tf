provider "aws"{
    region="us-east-1"

}

resource "aws_instance" "server" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.micro"
  subnet_id="subnet-084e48ad954a86134"
  security_groups=["sg-0a9b97852f6d8f294"]
  


  tags = {
    Name = "terraform-server"
  }
}