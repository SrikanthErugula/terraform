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