variable "ami_id" {
  type        = string
  description = "The image for ec2 instance"
}
variable "ec2_type" {
  type        = string
  description = "The ec2 instance type"
}
variable "public_az" {
  type        = string
  description = "Availability zone for public network"
}
variable "private_az" {
  type        = string
  description = "Availability zone for private subnet"
}
variable "private_subnet_id" {
  type        = string
  description = "Private subnet id"
}
variable "public_subnet_id" {
  type        = string
  description = "Public subnet id"
}
variable "key_pair_name" {
  type        = string
  description = "The ssh key pair name for ec2 instance access"
}
variable "public_security_group_id" {
  type        = string
  description = "The id of public security group"
}
variable "public_quantity" {
  type = number
}
variable "private_quantity" {
  type = number
}
