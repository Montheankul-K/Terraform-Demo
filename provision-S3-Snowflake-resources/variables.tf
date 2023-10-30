variable "warehouse" {
  type    = string
  default = "WAREHOUSE_TERRAFORM"
}

variable "database" {
  type    = string
  default = "DATABASE_TERRAFORM"
}

variable "size" {
  type    = string
  default = "XSMALL"
}

variable "s3_path_listings_file" {
  type    = string
  default = "s3://oat-project-data-landing/listings.csv"
}

variable "s3_path_hosts_file" {
  type    = string
  default = "s3://oat-project-data-landing/hosts.csv"
}

variable "s3_path_reviews_file" {
  type    = string
  default = "s3://oat-project-data-landing/hotel_reviews.csv"
}

variable "env_name" {
  type = string
}
