# variable "instances" {
#     # default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
# # so the above content has in list only here object type is list[]


# #idhi on cheste ec2.tf lo need on tag chesinavi kuda on cheyali...
#     # default = {
#     #       each.key = each.value   
#     #     mongodb = "t3.micro"
#     #     redis = "t3.micro"
#     #     mysql = "t3.small"
#     # } #..................... # so here object type is map {}
#     default = {
#         mongodb = {
#             instance_type = "t3.micro"
#             ami = "ami-id"
#         }
#         redis = "t3.micro"
#         mysql = "t3.small"
#     }

# }








################ for-loop lo map situation  ############
# variable "instances" {
#              default = {   
#         mongodb = "t3.micro"
#         redis = "t3.micro"
#         mysql = "t3.small"
#     }
# }


######################### for-loop lo list situation

variable "instances" {
  default = [ "mongodb", "redis", "mysql" ]

  }
 
# so here eveyrhing is consider as each.value 

# components ki separate ga permissions ivvali anukunte we can use map  like as below 
# default = {
# #         mongodb = {
# #             instance_type = "t3.micro"
# #             ami = "ami-id"
# #         }
# #         redis = "t3.micro"
# #         mysql = "t3.small"
# #     }  

# so then for access purpose each.value.ami .... each.value.instance_type ila



variable "zone_id" {
    default = "Z08113913KWDT82RCNFTV"
}

variable "domain_name" {
    default = "devops.fun"
}