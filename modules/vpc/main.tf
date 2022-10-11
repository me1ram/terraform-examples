resource "aws_vpc" "newvpc" {
  cidr_block       = var.cidrblock
  instance_tenancy = var.tenancy
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.newvpc.id
}
resource "aws_subnet" "public" {
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.public_az
  vpc_id            = aws_vpc.newvpc.id
}
resource "aws_subnet" "private" {
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.private_az
  vpc_id            = aws_vpc.newvpc.id
}
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.newvpc.id
}
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.newvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
resource "aws_vpc_endpoint" "s3" {
  vpc_id          = aws_vpc.newvpc.id
  service_name    = var.endpoint_service_name
  route_table_ids = flatten([aws_route_table.private.id])
}
