```HCL
module "vpc" {
  source = "./vpc"

  vpc_details = {
    Name       = "less_vpc"
    cidr_block = "192.168.0.0/16"
  }

  subnet_tags = ["web", "app", "db1", "db2"]


}

output "subnet_count" {
  value = module.vpc.subnet_count
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
```