output "subnet_count" {
    value = length(var.subnet_tags)
}

output "vpc_id" {
    value = aws_vpc.mod_vpc.id
}
