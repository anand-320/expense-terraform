env           = "dev"
instance_type = "t3.small"
zone_id       = "Z0738462OKKUK2E41LUJ"

#vpc
vpc_cidr_block         = "10.10.0.0/24"
default_vpc_cidr       = "172.31.0.0/16"
default_vpc_id         = "vpc-0714c5e55fd279dfe"
default_route_table_id = "rtb-001ac6974d39144ee"

frontend_subnet        = [ "10.10.0.0/27", "10.10.0.32/27" ]
backend_subnet         = [ "10.10.0.64/27", "10.10.0.96/27" ]
db_subnet              = [ "10.10.0.128/27", "10.10.0.160/27" ]
public_subnet          = [ "10.10.0.192/27", "10.10.0.224/27" ]
availability_zones     = [ "us-east-1a", "us-east-1b"]