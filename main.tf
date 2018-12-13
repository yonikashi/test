provider "aws" {
  region                  = "us-west-1"
  shared_credentials_file = "/home/eon01/.aws/credentials"
  profile                 = "terraform"
}

resource "aws_instance" "web" {
  ami = "ami-0ad16744583f21877"
  instance_type = "t2.micro"
  tags {
    Name = "yonikashi"
  }

}
