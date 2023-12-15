provider "aws" {
  region                   = var.aws_region
  shared_credentials_files = [var.aws_credential_file]
  profile                  = var.aws_config_profile
}

# Terraform state is stored in an AWS S3 bucket,
# Currently we cannot create the bucket using terrarform, maybe in a near
# future, see https://github.com/hashicorp/terraform/issues/15131
terraform {
  backend "s3" {
    bucket  = "aidevday-team-1-infrastructure-state-store"
    key     = "aidevday-team-1/terraform.tfstate"
    region  = "eu-central-1"
    profile = "travel-dev"
  }
}


