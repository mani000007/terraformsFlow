provider "aws"{
    region="us-east-1"

}

resource "aws_instance" "terraform" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.micro"
  subnet_id="subnet-001c0a640b665b349"
  security_groups=["sg-0bb446d22d2863447"]
  


  tags = {
    Name = "terraform-server"
  }
}