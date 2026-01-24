
variable "project" {
    default = "sri-cart"
}

variable "environment"{
    default = "dev"
}

# variable "common_name" {
#     default = "${var.project}-${var.environment}"
# }  # so clearly said here you can use variables inside locals. but we can't use one variable in another variable
# error mentioned in own doc there is available u can see there

variable "ami_id" {
  #description = "The AWS instance type to use" # it used to know what is it and where it it used for our understand purpose
  type =  string
  default     = "ami-09c813fb71547fc4f" # so after this in ec2.tf lo var.variable ani iste access avuthumdi
}

# variable "instance_type" {
#   type =  string
#   default = "t3.micro" # so after this in ec2.tf lo var.variable ani iste access avuthumdi
# }

# so here insted of this we have to local.tf for t3.micro value kosam.....


variable "common_tags" { 
  #type = string # so here map ani vunte no error will come, or else no type vunna emi error ledhu it can understad the situation
  type = map
  default = {
     #Name = "terraform-demo-local"
     Terraform = "true"
     Project = "sri-cart"
     ENV = "dev"

  }
  # so here ila tags name enni resources ki ayina ivvachu and dheniki ayina ivvachu
  # ec2.tf lo tags lo access chessukovachu u can see there  
}


variable "sg_name" {
    type = string
    default = "sg_terraform_allow"

    # optional to inform what is this variable about
    description = " Security group name to attach to EC2 instance" # this is for our understand 
  
}

variable "cidr" { # ikkada name manaistum emaina ivvachu
    type = list
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" { # so ikkada changes chesaka ec2.tf lo update cheyali for access cheyadnaiki same all below
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}