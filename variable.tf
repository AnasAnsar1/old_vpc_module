variable "vpc_details" {
  type = object({
    Name       = string
    cidr_block = string
  })

  default = {
    Name       = "module_vpc"
    cidr_block = "10.0.0.0/16"
  }
} 

variable "subnet_tags" {
  type = list(string)

  default = ["sub1", "sub2", "sub3", "sub4"]
}
