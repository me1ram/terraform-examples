output "vpc_id" {
  value = aws_vpc.newvpc.id
}
output "private_subnet_id" {
  value = aws_subnet.private.id
}
output "private_subnet_arn" {
  value = aws_subnet.private.arn
}
output "public_subnet_id" {
  value = aws_subnet.public.id
}
output "public_subnet_arn" {
  value = aws_subnet.public.arn
}
output "s3_vpc_endpoint_id" {
  value = aws_vpc_endpoint.s3.id
}