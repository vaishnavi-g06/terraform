provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZZFSRYKPGY5YZ5CQ"
  secret_key = "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"
}
variable "instance-value" {
  type = list
  default =["ins1","ins2"]
}
resource "aws_instance" "ins1" {
  
  ami = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  count = 2
  tags = {
    Name = "var.instance-value.${count.index}"
  }
}

# resource "aws_instance" "ins2" {
#   ami = "ami-00c39f71452c08778"
#   instance_type = "t2.micro"
# }
# resource "aws_eip" "lb" {
 
#   vpc      = true
# }
# output "eipip"{
#   value= aws_eip.lb.public_ip
# }
# resource "aws_s3_bucket" "mys3" {
#   bucket = "vaishnavi-06-01"
# }
# output "s3_bucket_domain"{
#   value= aws_s3_bucket.mys3.bucket_domain_name
#}
#provider azurerm{}