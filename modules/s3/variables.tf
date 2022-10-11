variable "acl_type" {
  type = string
}
variable "mybucket_name" {
  type        = string
  description = "Number for buckets"
}
variable "s3_bucket_quantity" {
  type        = number
  default     = 3
  description = "The list of s3 buckets"
}
variable "force_destroy" {
  type        = bool
  default     = false
  description = "Destroy bucket without confirmation"
}
variable "versioning" {
  description = "Map containing versioning configuration."
  type        = map(string)
  default     = {}
}
variable "object_lock_enabled" {
  description = "Whether S3 bucket should have an Object Lock configuration enabled."
  type        = bool
  default     = false
}
variable "buckets" {
  type    = set(string)
  default = ["name1", "name2", "name3"]
}