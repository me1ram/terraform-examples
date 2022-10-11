variable "cidrblock" {
  type        = string
  default     = "10.0.0.0/16"
  description = "The cidr of vpc subnet"
}
variable "tenancy" {
  type        = string
  default     = "default"
  description = "The tenancy of vpc"
}
variable "public_subnet_cidr" {
  type        = string
  description = "The IPv4 CIDR block for the private subnet"
}
variable "private_subnet_cidr" {
  type        = string
  description = "The IPv4 CIDR block for the private subnet"
}
variable "public_az" {
  type        = string
  description = "Availability zone for public subnet"
}
variable "private_az" {
  type        = string
  description = "Availability zone for private subnet"
}
variable "endpoint_service_name" {
  type        = string
  description = "Service name of created endpoint"
}
