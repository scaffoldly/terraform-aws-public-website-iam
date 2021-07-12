variable "stage" {
  type        = string
  description = "The stage (e.g. live, nonlive)"
}
variable "repository_name" {
  type        = string
  description = "The GitHub Repository Name"
}
variable "bucket_name" {
  type = string
  description = "The bucket name for deployments"
}
variable "distribution_id" {
  type = string
  description = "The distribution ID"
}
