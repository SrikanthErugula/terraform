variable "instances" {
    #default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
    default = [ "mongodb", "redis", "mysql", "rabbitmq" ]
}

variable "zone_id" {
    default = "Z04684822ZHOD2IE49OQC"
}

variable "domain_name" {
    default = "dsoaws.fun"
}