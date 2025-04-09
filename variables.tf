variable "region" {
  description = "a variable of type string"
  type        = string
  default     = null
}

# redshift cluster variables

variable "create_redshift_cluster" {
  description = "a variable of type bool"
  type        = bool
  default     = null
}

variable "cluster_identifier" {
  description = "a variable of type string"
  type        = string
  default     = null
}
variable "database_name" {
  description = "a variable of type string"
  type        = string
  default     = null
}
variable "master_username" {
  description = "a variable of type string"
  type        = string
  default     = null
}
variable "master_password" {
  description = "a variable of type string"
  type        = string
  default     = null
}
variable "node_type" {
  description = "a variable of type string"
  type        = string
  default     = null
}
variable "cluster_type" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "port" {
  description = "a variable of type number"
  type        = number
  default     = null
}

variable "publicly_accessible" {
  description = "a variable of type bool"
  type        = bool
  default     = null
}

variable "number_of_nodes" {
  description = "a variable of type number"
  type        = number
  default     = null
}

variable "encrypted" {
  description = "a variable of type bool"
  type        = bool
  default     = null
}

variable "kms_key_id" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "enhanced_vpc_routing" {
  description = "a variable of type bool"
  type        = bool
  default     = null
}

variable "cluster_subnet_group_name" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "iam_role_arns" {
  description = "a variable of type list"
  type        = list(any)
  default     = null
}

variable "vpc_security_group_ids" {
  description = "a variable of type list"
  type        = list(any)
  default     = null
}

variable "automated_snapshot_retention_period" {
  description = "a variable of type number"
  type        = number
  default     = null
}

variable "snapshot_schedule" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "cluster_parameter_group_name" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "default_iam_role_arn" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "master_password_wo" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "master_password_wo_version" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "master_password_secret_kms_key_id" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "multi_az" {
  description = "a variable of type bool"
  type        = bool
  default     = null
}

variable "availability_zone" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "availability_zone_relocation_enabled" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "preferred_maintenance_window" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "cluster_version" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "allow_version_upgrade" {
  description = "a variable of type bool"
  type        = bool
  default     = null
}

variable "apply_immediately" {
  description = "a variable of type bool"
  type        = bool
  default     = null
}

variable "elastic_ip" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "skip_final_snapshot" {
  description = "a variable of type bool"
  type        = bool
  default     = null
}

variable "final_snapshot_identifier" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "snapshot_arn" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "snapshot_identifier" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "snapshot_cluster_identifier" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "owner_account" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "iam_roles" {
  description = "a variable of type set"
  type        = set(any)
  default     = null
}

variable "maintenance_track_name" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "manual_snapshot_retention_period" {
  description = "a variable of type number"
  type        = number
  default     = null
}

variable "tags" {
  description = "a variable of type map"
  type        = map(any)
  default     = null
}

variable "bucket_name" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "s3_key_prefix" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "log_destination_type" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "log_exports" {
  description = "a variable of type set"
  type        = set(any)
  default     = null
}

variable "destination_region" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "retention_period" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "grant_name" {
  description = "a variable of type string"
  type        = string
  default     = null
}

variable "definitions" {
  description = "a variable of type list"
  type        = list(any)
  default     = null
}

variable "snapshot_copy_grant_name" {
  description = "a variable of type string"
  type        = string
  default     = null
}
