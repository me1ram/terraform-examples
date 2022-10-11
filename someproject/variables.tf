variable "mybucket_name" {
  type        = string
  default     = "mybucketins3-tf-meiram"
  description = "Bucket name in S3"
}
variable "acl_type" {
  type        = string
  default     = "private"
  description = "ACL type for s3 bucket"
}
variable "ec2_type" {
  type        = string
  default     = "t2.nano"
  description = "Instance type in EC2 service AWS"
}
variable "ami_id" {
  type        = string
  default     = "ami-0ea0f26a6d50850c5"
  description = "Image ID for ec2 instance in AWS"
}
variable "az" {
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b"]
  description = "Availability zone in AWS region"
}
variable "private_subnet_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "Subnet cidr block for private subnet"
}
variable "public_subnet_cidr" {
  type        = string
  default     = "10.0.2.0/24"
  description = "Subnet cidr block for public subnet"
}
variable "cidrblock" {
  type        = string
  default     = "10.0.0.0/16"
  description = "VPC subnet mask"
}
variable "public_az" {
  type        = string
  default     = "eu-west-1b"
  description = "Availability zone for public network"
}
variable "private_az" {
  type        = string
  default     = "eu-west-1a"
  description = "Availability zone for private network"
}
variable "endpoint_service_name" {
  type    = string
  default = "com.amazonaws.eu-west-1.s3"
}
variable "key_pair_name" {
  type        = string
  default     = "centos"
  description = "My ssh key pair name for ec2 instance access"
}
variable "bucket_list" {
  type    = number
  default = 3
}
variable "public_quantity" {
  type    = number
  default = 3
}
variable "private_quantity" {
  type    = number
  default = 3
}
