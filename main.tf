resource "aws_vpc" "mod_vpc" {
    cidr_block = var.vpc_details.cidr_block

    tags = {
      Name = var.vpc_details.Name
    }
}

resource "aws_subnet" "mod_sub" {
    count      = length(var.subnet_tags)
    vpc_id     = aws_vpc.mod_vpc.id
    cidr_block = cidrsubnet(var.vpc_details.cidr_block,8,count.index)

    tags = {
      Name = var.subnet_tags[count.index]
    }
}
