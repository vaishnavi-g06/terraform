
resource "aws_security_group" "t-sg" {
  name        = "t-sg"
  
  ingress {
   
    from_port        = 443
    to_port          = 443
    protocol         = var.proto
    cidr_blocks = [var.ip_add]
  }
  ingress {
   
    from_port        = 80
    to_port          = 80
    protocol         = var.proto
    cidr_blocks = [var.ip_add]
  }
}