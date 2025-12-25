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

# the above is syntax 


data "aws_ami" "joindevops" {
    owners           = ["973714476881"] # see in my own word doc 
    most_recent      = true # latest ami kavali ani cheptunnam 

    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"] # see in my own word doc 
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

data "aws_instance" "redis" { 
    instance_id = "i-07d284289d1e5a63d"  # so ikkada query cheyanlante edho okati kavali kabbati we need instance id
}

output "redis_info" {
    value = data.aws_instance.redis.public_ip
}

# so here existing info or data ni query cheyatum ila, very easy process 




# # EX:1

# data "aws_instance" "manual" {
#  instance_id =  = "i-0320a694dbc8631b3"
# }

# output "manual_info" {
#   #value = data.aws_instance.mysql.private_ip
#   value = data.aws_instance.manual.private_ip
# }