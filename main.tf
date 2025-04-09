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
  publicly_accessible                 = var.publicly_accessible
  number_of_nodes                     = var.number_of_nodes
  encrypted                           = var.encrypted
  kms_key_id                          = var.kms_key_id
  enhanced_vpc_routing                = var.enhanced_vpc_routing
  cluster_subnet_group_name           = var.cluster_subnet_group_name
  vpc_security_group_ids              = var.vpc_security_group_ids
  automated_snapshot_retention_period = var.automated_snapshot_retention_period
  cluster_parameter_group_name        = var.cluster_parameter_group_name

  default_iam_role_arn                 = var.default_iam_role_arn
  master_password_secret_kms_key_id    = var.master_password_secret_kms_key_id
  multi_az                             = var.multi_az
  availability_zone                    = var.availability_zone
  availability_zone_relocation_enabled = var.availability_zone_relocation_enabled
  preferred_maintenance_window         = var.preferred_maintenance_window
  cluster_version                      = var.cluster_version
  allow_version_upgrade                = var.allow_version_upgrade
  apply_immediately                    = var.apply_immediately
  elastic_ip                           = var.elastic_ip
  skip_final_snapshot                  = var.skip_final_snapshot
  final_snapshot_identifier            = var.final_snapshot_identifier
  snapshot_arn                         = var.snapshot_arn
  snapshot_identifier                  = var.snapshot_identifier
  snapshot_cluster_identifier          = var.snapshot_cluster_identifier
  owner_account                        = var.owner_account
  iam_roles                            = var.iam_roles
  maintenance_track_name               = var.maintenance_track_name
  manual_snapshot_retention_period     = var.manual_snapshot_retention_period
  tags                                 = var.tags
}

# iam roles

resource "aws_redshift_cluster_iam_roles" "cluster_iam_role" {
  count              = var.create_redshift_cluster ? 1 : 0
  cluster_identifier = aws_redshift_cluster.redshift[count.index].cluster_identifier
  iam_role_arns      = var.iam_role_arns
}


# snapshot schedule

resource "aws_redshift_snapshot_schedule" "default" {
  count       = var.create_redshift_cluster ? 1 : 0
  identifier  = aws_redshift_cluster.redshift[count.index].cluster_identifier
  definitions = var.definitions
}


# redshift auditing

resource "aws_redshift_logging" "redshiftauditlogging" {
  count                = var.create_redshift_cluster ? 1 : 0
  cluster_identifier   = aws_redshift_cluster.redshift[count.index].cluster_identifier
  log_destination_type = "s3"
  bucket_name          = var.bucket_name
  s3_key_prefix        = var.s3_key_prefix
  log_exports          = var.log_exports
}

# redshift snapshot copy

resource "aws_redshift_snapshot_copy" "redshift_snapshot_copy" {
  count                            = var.create_redshift_cluster ? 1 : 0
  cluster_identifier               = aws_redshift_cluster.redshift[count.index].cluster_identifier
  destination_region               = var.destination_region
  manual_snapshot_retention_period = var.manual_snapshot_retention_period
  retention_period                 = var.retention_period
  snapshot_copy_grant_name         = var.grant_name
}
