#Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# Create a redshift cluster
resource "aws_redshift_cluster" "redshift" {
  count              = var.create_redshift_cluster ? 1 : 0
  cluster_identifier = var.cluster_identifier
  database_name      = var.database_name
  master_username    = var.master_username
  master_password    = var.master_password
  node_type          = var.node_type
  cluster_type       = var.cluster_type
  port               = var.port

  # Optional attributes
  publicly_accessible   = var.publicly_accessible
  number_of_nodes       = var.number_of_nodes
  encrypted             = var.encrypted
  kms_key_id            = var.kms_key_id
  enhanced_vpc_routing  = var.enhanced_vpc_routing
  cluster_subnet_group_name = var.cluster_subnet_group_name
  iam_role_arns         = var.iam_role_arns
  vpc_security_group_ids = var.vpc_security_group_ids
  automated_snapshot_retention_period = var.automated_snapshot_retention_period
  maintenance_window = var.maintenance_window
  snapshot_schedule = var.snapshot_schedule
  cluster_parameter_group_name = var.cluster_parameter_group_name
}
