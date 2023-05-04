
resource "aws_instance" "dev" {
  
  ami = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  count = var.istest== true ? 1:0
  
}
resource "aws_instance" "prod" {
  
  ami = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
   count = var.istest== false ? 1:0
  
}
variable "istest" {
  
}