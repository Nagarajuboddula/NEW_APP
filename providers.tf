/*terraform {
required_version = “>=0.12”
}
provider “aws” {
#profile = var.profile
shared_credentials_files = ["/root/.aws/credentials"]
region = us-east-1
}*/

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
      bucket = "ansiblebucketseptemb2"
      key = "terraform.tfstate"
      region = "us-east-1"
  }
}

