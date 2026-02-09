resource "aws_instance" "tfstart" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg_tfstart.id] # see in notes

  tags = {
    Name = "terraform_start"
    terraform = true # it is used to know like terrform tho create chesa ani cheptundi true ani vunte 
  }
} # so upto here instances or server create avuthai based on above code 

# It is like as a block
resource "aws_security_group" "sg_tfstart" {
  name   = "sg_tf_allow" # names anevi alredy exist ayyi vunte delete chesi or vere names ivvali
  #vpc_id = aws_vpc.example.id # no need bcz it will take direct it from default

# It is like as a block
  egress { # out
    from_port        = 0 # all ports need to allow
    to_port          = 0 # all ports needs ot allow
    protocol         = "-1" # it means all protocols needs to allow
    cidr_blocks      = ["0.0.0.0/0"] # from internet
    
  }
# It is like as a block
  ingress { # in
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