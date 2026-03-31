resource "aws_instance" "terraform_vars" {
  ami           = var.ami_id # here values updated in variable.tf lo ikkada access chestunnam anthe
  instance_type = var.instance_type # here values updated in variable.tf lo ikkada access chestunnam anthe
  vpc_security_group_ids = [aws_security_group.sg_terraform_allow_vars.id]

  tags = var.ec2-tags 
}

# It is like as a block
resource "aws_security_group" "sg_terraform_allow_vars" {
  name   = var.sg_name # names anevi alredy exist ayyi vunte delete chesi or vere names ivvali
  #vpc_id = aws_vpc.example.id # no need bcz it will take direct it from default

# It is like as a block
  egress {
    from_port        = var.egress_from_port # all ports need to allow
    to_port          = var.egress_to_port # all ports needs ot allow
    protocol         = var.protocol # it means all protocols needs to allow
    cidr_blocks      = var.cidr # from internet
    
  }
# It is like as a block
  ingress {
    from_port        = var.ingress_from_port # all ports need to allow
    to_port          = var.ingress_to_port # all ports needs ot allow
    protocol         = var.protocol # it means all protocols needs to allow
    cidr_blocks      = var.cidr # from internet
    
  }

  tags = {
    Name = "sg_terraform_allow" # it will be displayed at NAME Tab section
  }
}
# within {} we called as map or object 

## Comment