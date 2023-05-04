
resource "aws_instance" "ref-ec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}
resource "aws_eip" "lb" {
  vpc = true
}
resource "aws_eip_association" "eip-assotn" {
  instance_id = aws_instance.ref-ec2.id
  allocation_id = aws_eip.lb.id
}
resource "aws_security_group" "terra-sg" {
  name        = "terra-sg"
  
  ingress {
   
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
  }
}
