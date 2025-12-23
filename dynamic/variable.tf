variable "ingress_ports" {
    default = [80,22,8080, 6379] 
}

# if someonem will ask like  need add another port 6379 for my application is suppoerted for thar port only,,, in that case go to variables.tf and u can add 6379 and do terraform plan and apply...