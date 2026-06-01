resource "aws_instance" "terraform_vars" {
  ami           = var.ami_id 
  instance_type = var.instance_type 
  vpc_security_group_ids = [aws_security_group.sg_vars_re.id]

  tags = var.ec2-tags 
}

# It is like as a block
resource "aws_security_group" "sg_vars_re" {
  name   = var.sg_name
# It is like as a block
  egress {
    from_port        = var.egress_from_port 
    to_port          = var.egress_to_port
    protocol         = var.protocol 
    cidr_blocks      = var.cidr # from internet
    
  }
# It is like as a block
  ingress {
    from_port        = var.ingress_from_port 
    to_port          = var.ingress_to_port 
    protocol         = var.protocol 
    cidr_blocks      = var.cidr # from internet
    
  }

  tags = {
    Name = "sg-tag-name" # it will be displayed at NAME Tab section
  }
}
# within {} we called as map or object 
