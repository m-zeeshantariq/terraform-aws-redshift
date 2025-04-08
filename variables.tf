variable "region" {
    description = "a variable of type string"
    type = string
    default = null
}

# redshift cluster variables
variable cluster_identifier {
    description = "a variable of type string"
    type = string
    default = null
} 
variable database_name {
    description = "a variable of type string"
    type = string
    default = null
}
variable master_username {
    description = "a variable of type string"
    type = string
    default = null
}
variable master_password {
    description = "a variable of type string"
    type = string
    default = null
}
variable node_type {
    description = "a variable of type string"
    type = string
    default = null
}
variable cluster_type {
    description = "a variable of type string"
    type = string
    default = null
}

variable "port" {
    description = "a variable of type number"
    type = number
    default = null
}

variable "publicly_accessible" {
    description = "a variable of type bool"
    type = bool
    default = null
}

variable "number_of_nodes" {
    description = "a variable of type number"
    type = number
    default = null
}

variable "encrypted" {
    description = "a variable of type bool"
    type = bool
    default = null
}

variable "kms_key_id" {
    description = "a variable of type string"
    type = string
    default = null
}

variable "enhanced_vpc_routing" {
    description = "a variable of type bool"
    type = bool
    default = null
}

variable "cluster_subnet_group_name" {
    description = "a variable of type string"
    type = string
    default = null
}

variable "iam_role_arns" {
    description = "a variable of type list"
    type = list
    default = null
}

variable "vpc_security_group_ids" {
    description = "a variable of type list"
    type = list
    default = null
}

variable "automated_snapshot_retention_period" {
    description = "a variable of type number"
    type = number
    default = null
}

variable "maintenance_window" {
    description = "a variable of type string"
    type = string
    default = null
}

variable "snapshot_schedule" {
    description = "a variable of type string"
    type = string
    default = null
}

variable "cluster_parameter_group_name" {
    description = "a variable of type string"
    type = string
    default = null
}
