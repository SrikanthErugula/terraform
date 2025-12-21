resource "aws_instance" "terraform" {
  #count = 4 # so here ila ivvatum valla same configuration tho 10 ec2 instance create avuthai.
  count = length(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg_terraform_allow.id]

  tags = {
    Name = var.instances[count.index] # so here explanation see in notes
    terraform = true # it is used to know like terrform tho create chesa ani cheptundi true ani vunte 
  }
}

resource "aws_security_group" "sg_terraform_allow" {
  name   = "sg_terraform_allow" # names anevi alredy exist ayyi vunte delete chesi or vere names ivvali
  #vpc_id = aws_vpc.example.id # no need bcz it will take direct it from default

  egress {
    from_port        = 0 # all ports need to allow
    to_port          = 0 # all ports needs ot allow
    protocol         = "-1" # it means all protocols needs to allow
    cidr_blocks      = ["0.0.0.0/0"] # from internet
    
  }

  ingress {
    from_port        = 0 # all ports need to allow
    to_port          = 0 # all ports needs ot allow
    protocol         = "-1" # it means all protocols needs to allow
    cidr_blocks      = ["0.0.0.0/0"] # from internet
    
  }

  tags = {
    Name = "sg_terraform_allow"
  }
}
# within {} we called as map or object 

## Comment