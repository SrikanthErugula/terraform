variable "instances" {
    #default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
    default = [ "mongodb", "redis", "mysql", "rabbitmq" ]
}

# variable "zone_id" {
#     default = "Z0508801ITHFU9ARNA74"
# }

# variable "domain_name" {
#     default = "dsoaws.fun"
# }