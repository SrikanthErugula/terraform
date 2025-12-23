data "aws_ami" "joindevops" {
    owners           = ["973714476881"] # so this value comes from ec2 server amiis->owner id
    most_recent      = true

    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }
    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id # see in notes
}

# data "aws_instance" "redis" { 
#     instance_id = "i-07d284289d1e5a63d"  # so ikkada query cheyanlante edho okati kavali kabbati we need instance id
# }

# output "redis_info" {
#     value = data.aws_instance.redis.public_ip
# }

# so here existing info or data ni query cheyatum ila, very easy process 




# # EX:1

# data "aws_instance" "mysql" {
#     instance_id = "i-059a4e0c9a242f78d"
# }

# output "mysql_info" {
#   #value = data.aws_instance.mysql.private_ip
#   value = data.aws_instance.mysql.public_ip
# }