# output "instances_output" {
#   value = aws_instance.terraform # so idhi ec2.tf lo name vuntthdi so akkada numchi tisukovali
# }



 /* so varible.tf lo variables ni declare chesinappudu manaki o/p vastundi ga so manaki edhi 
kavalante ahdi vastundi, 

so ila cheyatum valla manaki oka out put vatundi it means ex 4 instace create avuthai 
anukundham so akkkada private vastundi  */  





# = {
#   "mongodb" = {
#     "ami" = "ami-0220d79f3f480ecf5"
#     "arn" = "arn:aws:ec2:us-east-1:655355946253:instance/i-09f00ac72e3d2a444"
#     "associate_public_ip_address" = true
#     "availability_zone" = "us-east-1c"
#     "capacity_reservation_specification" = tolist([
#       {
#         "capacity_reservation_preference" = "open"
#         "capacity_reservation_target" = tolist([])
#       },
#     ])
#     "cpu_options" = tolist([
#       {
#         "amd_sev_snp" = ""
#         "core_count" = 1
#         "threads_per_core" = 2
#       },
#     ])
#     "credit_specification" = tolist([
#       {
#         "cpu_credits" = "unlimited"
#       },
#     ])
#     "disable_api_stop" = false
#     "disable_api_termination" = false
#     "ebs_block_device" = toset([])
#     "ebs_optimized" = false
#     "enable_primary_ipv6" = tobool(null)
#     "enclave_options" = tolist([
#       {
#         "enabled" = false
#       },
#     ])
#     "ephemeral_block_device" = toset([])
#     "force_destroy" = false
#     "get_password_data" = false
#     "hibernation" = false
#     "host_id" = ""
#     "host_resource_group_arn" = tostring(null)
#     "iam_instance_profile" = ""
#     "id" = "i-09f00ac72e3d2a444"
#     "instance_initiated_shutdown_behavior" = "stop"
#     "instance_lifecycle" = ""
#     "instance_market_options" = tolist([])
#     "instance_state" = "running"
#     "instance_type" = "t3.micro"
#     "ipv6_address_count" = 0
#     "ipv6_addresses" = tolist([])
#     "key_name" = ""
#     "launch_template" = tolist([])
#     "maintenance_options" = tolist([
#       {
#         "auto_recovery" = "default"
#       },
#     ])
#     "metadata_options" = tolist([
#       {
#         "http_endpoint" = "enabled"
#         "http_protocol_ipv6" = "disabled"
#         "http_put_response_hop_limit" = 1
#         "http_tokens" = "optional"
#         "instance_metadata_tags" = "disabled"
#       },
#     ])
#     "monitoring" = false
#     "network_interface" = toset([])
#     "outpost_arn" = ""
#     "password_data" = ""
#     "placement_group" = ""
#     "placement_group_id" = ""
#     "placement_partition_number" = 0
#     "primary_network_interface" = tolist([
#       {
#         "delete_on_termination" = true
#         "network_interface_id" = "eni-00ea5107120863c13"
#       },
#     ])
#     "primary_network_interface_id" = "eni-00ea5107120863c13"
#     "private_dns" = "ip-172-31-30-46.ec2.internal"
#     "private_dns_name_options" = tolist([
#       {
#         "enable_resource_name_dns_a_record" = false
#         "enable_resource_name_dns_aaaa_record" = false
#         "hostname_type" = "ip-name"
#       },
#     ])
#     "private_ip" = "172.31.30.46"
#     "public_dns" = "ec2-98-89-42-249.compute-1.amazonaws.com"
#     "public_ip" = "98.89.42.249"
#     "region" = "us-east-1"
#     "root_block_device" = tolist([
#       {
#         "delete_on_termination" = true
#         "device_name" = "/dev/sda1"
#         "encrypted" = false
#         "iops" = 3000
#         "kms_key_id" = ""
#         "tags" = tomap({})
#         "tags_all" = tomap({})
#         "throughput" = 125
#         "volume_id" = "vol-0e401038e8fa88055"
#         "volume_size" = 20
#         "volume_type" = "gp3"
#       },
#     ])
#     "secondary_private_ips" = toset([])
#     "security_groups" = toset([
#       "allow-all",
#     ])
#     "source_dest_check" = true
#     "spot_instance_request_id" = ""
#     "subnet_id" = "subnet-04bd6f6f2a6387a5e"
#     "tags" = tomap({
#       "Name" = "mongodb"
#       "Terraform" = "true"
#     })
#     "tags_all" = tomap({
#       "Name" = "mongodb"
#       "Terraform" = "true"
#     })
#     "tenancy" = "default"
#     "timeouts" = null /* object */
#     "user_data" = tostring(null)
#     "user_data_base64" = tostring(null)
#     "user_data_replace_on_change" = false
#     "volume_tags" = tomap(null) /* of string */
#     "vpc_security_group_ids" = toset([
#       "sg-022faef3cde0d5d8d",
#     ])
#   }
#   "mysql" = {
#     "ami" = "ami-0220d79f3f480ecf5"
#     "arn" = "arn:aws:ec2:us-east-1:655355946253:instance/i-0e557a4a9c887931e"
#     "associate_public_ip_address" = true
#     "availability_zone" = "us-east-1c"
#     "capacity_reservation_specification" = tolist([
#       {
#         "capacity_reservation_preference" = "open"
#         "capacity_reservation_target" = tolist([])
#       },
#     ])
#     "cpu_options" = tolist([
#       {
#         "amd_sev_snp" = ""
#         "core_count" = 1
#         "threads_per_core" = 2
#       },
#     ])
#     "credit_specification" = tolist([
#       {
#         "cpu_credits" = "unlimited"
#       },
#     ])
#     "disable_api_stop" = false
#     "disable_api_termination" = false
#     "ebs_block_device" = toset([])
#     "ebs_optimized" = false
#     "enable_primary_ipv6" = tobool(null)
#     "enclave_options" = tolist([
#       {
#         "enabled" = false
#       },
#     ])
#     "ephemeral_block_device" = toset([])
#     "force_destroy" = false
#     "get_password_data" = false
#     "hibernation" = false
#     "host_id" = ""
#     "host_resource_group_arn" = tostring(null)
#     "iam_instance_profile" = ""
#     "id" = "i-0e557a4a9c887931e"
#     "instance_initiated_shutdown_behavior" = "stop"
#     "instance_lifecycle" = ""
#     "instance_market_options" = tolist([])
#     "instance_state" = "running"
#     "instance_type" = "t3.small"
#     "ipv6_address_count" = 0
#     "ipv6_addresses" = tolist([])
#     "key_name" = ""
#     "launch_template" = tolist([])
#     "maintenance_options" = tolist([
#       {
#         "auto_recovery" = "default"
#       },
#     ])
#     "metadata_options" = tolist([
#       {
#         "http_endpoint" = "enabled"
#         "http_protocol_ipv6" = "disabled"
#         "http_put_response_hop_limit" = 1
#         "http_tokens" = "optional"
#         "instance_metadata_tags" = "disabled"
#       },
#     ])
#     "monitoring" = false
#     "network_interface" = toset([])
#     "outpost_arn" = ""
#     "password_data" = ""
#     "placement_group" = ""
#     "placement_group_id" = ""
#     "placement_partition_number" = 0
#     "primary_network_interface" = tolist([
#       {
#         "delete_on_termination" = true
#         "network_interface_id" = "eni-04bf4b62a671fc8af"
#       },
#     ])
#     "primary_network_interface_id" = "eni-04bf4b62a671fc8af"
#     "private_dns" = "ip-172-31-24-190.ec2.internal"
#     "private_dns_name_options" = tolist([
#       {
#         "enable_resource_name_dns_a_record" = false
#         "enable_resource_name_dns_aaaa_record" = false
#         "hostname_type" = "ip-name"
#       },
#     ])
#     "private_ip" = "172.31.24.190"
#     "public_dns" = "ec2-18-232-182-124.compute-1.amazonaws.com"
#     "public_ip" = "18.232.182.124"
#     "region" = "us-east-1"
#     "root_block_device" = tolist([
#       {
#         "delete_on_termination" = true
#         "device_name" = "/dev/sda1"
#         "encrypted" = false
#         "iops" = 3000
#         "kms_key_id" = ""
#         "tags" = tomap({})
#         "tags_all" = tomap({})
#         "throughput" = 125
#         "volume_id" = "vol-06e132c59150feb58"
#         "volume_size" = 20
#         "volume_type" = "gp3"
#       },
#     ])
#     "secondary_private_ips" = toset([])
#     "security_groups" = toset([
#       "allow-all",
#     ])
#     "source_dest_check" = true
#     "spot_instance_request_id" = ""
#     "subnet_id" = "subnet-04bd6f6f2a6387a5e"
#     "tags" = tomap({
#       "Name" = "mysql"
#       "Terraform" = "true"
#     })
#     "tags_all" = tomap({
#       "Name" = "mysql"
#       "Terraform" = "true"
#     })
#     "tenancy" = "default"
#     "timeouts" = null /* object */
#     "user_data" = tostring(null)
#     "user_data_base64" = tostring(null)
#     "user_data_replace_on_change" = false
#     "volume_tags" = tomap(null) /* of string */
#     "vpc_security_group_ids" = toset([
#       "sg-022faef3cde0d5d8d",
#     ])
#   }
#   "redis" = {
#     "ami" = "ami-0220d79f3f480ecf5"
#     "arn" = "arn:aws:ec2:us-east-1:655355946253:instance/i-0e734d846907b9c1d"
#     "associate_public_ip_address" = true
#     "availability_zone" = "us-east-1c"
#     "capacity_reservation_specification" = tolist([
#       {
#         "capacity_reservation_preference" = "open"
#         "capacity_reservation_target" = tolist([])
#       },
#     ])
#     "cpu_options" = tolist([
#       {
#         "amd_sev_snp" = ""
#         "core_count" = 1
#         "threads_per_core" = 2
#       },
#     ])
#     "credit_specification" = tolist([
#       {
#         "cpu_credits" = "unlimited"
#       },
#     ])
#     "disable_api_stop" = false
#     "disable_api_termination" = false
#     "ebs_block_device" = toset([])
#     "ebs_optimized" = false
#     "enable_primary_ipv6" = tobool(null)
#     "enclave_options" = tolist([
#       {
#         "enabled" = false
#       },
#     ])
#     "ephemeral_block_device" = toset([])
#     "force_destroy" = false
#     "get_password_data" = false
#     "hibernation" = false
#     "host_id" = ""
#     "host_resource_group_arn" = tostring(null)
#     "iam_instance_profile" = ""
#     "id" = "i-0e734d846907b9c1d"
#     "instance_initiated_shutdown_behavior" = "stop"
#     "instance_lifecycle" = ""
#     "instance_market_options" = tolist([])
#     "instance_state" = "running"
#     "instance_type" = "t3.micro"
#     "ipv6_address_count" = 0
#     "ipv6_addresses" = tolist([])
#     "key_name" = ""
#     "launch_template" = tolist([])
#     "maintenance_options" = tolist([
#       {
#         "auto_recovery" = "default"
#       },
#     ])
#     "metadata_options" = tolist([
#       {
#         "http_endpoint" = "enabled"
#         "http_protocol_ipv6" = "disabled"
#         "http_put_response_hop_limit" = 1
#         "http_tokens" = "optional"
#         "instance_metadata_tags" = "disabled"
#       },
#     ])
#     "monitoring" = false
#     "network_interface" = toset([])
#     "outpost_arn" = ""
#     "password_data" = ""
#     "placement_group" = ""
#     "placement_group_id" = ""
#     "placement_partition_number" = 0
#     "primary_network_interface" = tolist([
#       {
#         "delete_on_termination" = true
#         "network_interface_id" = "eni-08303f760e1576f32"
#       },
#     ])
#     "primary_network_interface_id" = "eni-08303f760e1576f32"
#     "private_dns" = "ip-172-31-18-94.ec2.internal"
#     "private_dns_name_options" = tolist([
#       {
#         "enable_resource_name_dns_a_record" = false
#         "enable_resource_name_dns_aaaa_record" = false
#         "hostname_type" = "ip-name"
#       },
#     ])
#     "private_ip" = "172.31.18.94"
#     "public_dns" = "ec2-3-94-119-116.compute-1.amazonaws.com"
#     "public_ip" = "3.94.119.116"
#     "region" = "us-east-1"
#     "root_block_device" = tolist([
#       {
#         "delete_on_termination" = true
#         "device_name" = "/dev/sda1"
#         "encrypted" = false
#         "iops" = 3000
#         "kms_key_id" = ""
#         "tags" = tomap({})
#         "tags_all" = tomap({})
#         "throughput" = 125
#         "volume_id" = "vol-08bf97fbbdee3e97b"
#         "volume_size" = 20
#         "volume_type" = "gp3"
#       },
#     ])
#     "secondary_private_ips" = toset([])
#     "security_groups" = toset([
#       "allow-all",
#     ])
#     "source_dest_check" = true
#     "spot_instance_request_id" = ""
#     "subnet_id" = "subnet-04bd6f6f2a6387a5e"
#     "tags" = tomap({
#       "Name" = "redis"
#       "Terraform" = "true"
#     })
#     "tags_all" = tomap({
#       "Name" = "redis"
#       "Terraform" = "true"
#     })
#     "tenancy" = "default"
#     "timeouts" = null /* object */
#     "user_data" = tostring(null)
#     "user_data_base64" = tostring(null)
#     "user_data_replace_on_change" = false
#     "volume_tags" = tomap(null) /* of string */
#     "vpc_security_group_ids" = toset([
#       "sg-022faef3cde0d5d8d",
#     ])
#   }
# }



# so here for_loop ani ivvagane iteration start avuthundi, terraform ichhina reserved key tho like 
# --> each.key tho above o/p lo each.key ante mongodb vastundhi .... each.value ante within {} antha value
# for ex mongodb pvt kavalante each.value.pvt_ip

