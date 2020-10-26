# output bucket versioning info as as part of apply terraform
output "aws_security_group_http_server_details" {
  value = aws_security_group.http_server_sg
}

# output EC2 http servers details info as as part of apply terraform
output "aws_instance_http_servers_detail" {
  // value = aws_instance.http_servers    // single server detail 
  value = values(aws_instance.http_servers).*.id // multiple server details
}

# output dns info for load balancer servers as as part of apply terraform
output "elb_public_dns__details" {
  value = aws_elb.elb
}

# output default vpc info as as part of apply terraform
output "aws_default_vpc_details" {
  value = aws_default_vpc.default
}

# output subnet ids info using data provider as as part of apply terraform
output "aws_subnet_ids_details" {
  value = data.aws_subnet_ids.default_subnets
}

# output aws ami info using data provider as as part of apply terraform
output "aws_ami_linux_2_details" {
  value = data.aws_ami.aws_linux_2_latest
}





