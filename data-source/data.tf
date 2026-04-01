# */ data "aws_ami" "example" {
#   executable_users = ["self"]
#   most_recent      = true
#   name_regex       = "^myami-[0-9]{3}"  no need
#   owners           = ["self"]

#   filter {
#     name   = "name"
#     values = ["myami-*"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }
# */

# the above is doc syntax.....


data "aws_ami" "joindevops" {
    owners           = ["973714476881"] # see in my own word doc 
    most_recent      = true # latest ami kavali ani cheptunnam 

    filter {
        name   = "name"
        values = ["Redhat-9-DevOps-Practice"] # see in my own word doc 
    }
    filter {
        name   = "root-device-type"
        values = ["ebs"] # see in my own word doc 
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"] # see in my own word doc 
    }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id # see in notes
}

# so below laga sri ani oka server create chesi we can query any data form that server

# data "aws_instance" "sri" {  # here redis created by manual without using terraform
#     instance_id = "i-062ac1f30c8fb64f7"  # so ikkada query cheyanlante edho okati kavali kabbati we need instance id
# }

# output "sri_info" { # so manual serevr vi kuda data ni query cheyachu...
#     value = data.aws_instance.sri.root_block_device 
# }

# so here existing info or data ni query cheyatum ila, very easy process 




# # EX:1

# data "aws_instance" "manual" {
#  instance_id =  = "i-0320a694dbc8631b3"
# }

# output "manual_info" {
#   #value = data.aws_instance.mysql.private_ip
#   value = data.aws_instance.manual.private_ip
# }