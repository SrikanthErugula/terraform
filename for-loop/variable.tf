variable "instances" {
    #default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
# so the above content has in list only here object type is list[]

      default = [ "mongodb", "redis"]#, "mysql" ]

# idhi on cheste ec2.tf lo need on tag chesinavi kuda on cheyali...
    # default = {
          #each.key = each.value   
    #     mongodb = "t3.micro"
    #     redis = "t3.micro"
    #     mysql = "t3.small"
    # } #..................... # so here object type is map {}
    # default = {
    #     mongodb = {
    #         instance_type = "t3.micro"
    #         ami = "ami-id"
    #     }
    #     redis = "t3.micro"
    #     mysql = "t3.small"
    # }

}

variable "zone_id" {
    default = "Z0508801ITHFU9ARNA74"
}

variable "domain_name" {
    default = "dsoaws.fun"
}