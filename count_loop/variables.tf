variable "instances" {
    #default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
    default = [ "mongodb", "redis", "mysql", "rabbitmq" ]
}

variable "zone_id" {
    default = "Z08113913KWDT82RCNFTV"
}

variable "domain_name" {
    default = "devops.fun"
}