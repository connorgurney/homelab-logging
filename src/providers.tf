# Terraform configuration
terraform {
  # Backend configuration
  backend "s3" {
    region = "eu-west-2"

    bucket               = "connorgurney-homelab-iac-state"
    key                  = "shared/homelab-logging"
    workspace_key_prefix = ""

    dynamodb_table = "connorgurney-homelab-iac-locks"
  }
}

# AWS provider in ap-northeast-1
provider "aws" {
  alias  = "ap_northeast_1"
  region = "ap-northeast-1"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in ap-northeast-2
provider "aws" {
  alias  = "ap_northeast_2"
  region = "ap-northeast-2"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in ap-northeast-3
provider "aws" {
  alias  = "ap_northeast_3"
  region = "ap-northeast-3"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in ap-south-1
provider "aws" {
  alias  = "ap_south_1"
  region = "ap-south-1"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in ap-southeast-1
provider "aws" {
  alias  = "ap_southeast_1"
  region = "ap-southeast-1"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in ap-southeast-2
provider "aws" {
  alias  = "ap_southeast_2"
  region = "ap-southeast-2"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in ca-central-1
provider "aws" {
  alias  = "ca_central_1"
  region = "ca-central-1"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in eu-central-1
provider "aws" {
  alias  = "eu_central_1"
  region = "eu-central-1"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in eu-north-1
provider "aws" {
  alias  = "eu_north_1"
  region = "eu-north-1"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in eu-west-1
provider "aws" {
  alias  = "eu_west_1"
  region = "eu-west-1"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in eu-west-2
provider "aws" {
  alias  = "eu_west_2"
  region = "eu-west-2"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in eu-west-3
provider "aws" {
  alias  = "eu_west_3"
  region = "eu-west-3"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in sa-east-1
provider "aws" {
  alias  = "sa_east_1"
  region = "sa-east-1"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in us-east-1
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in us-east-2
provider "aws" {
  alias  = "us_east_2"
  region = "us-east-2"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in us-west-1
provider "aws" {
  alias  = "us_west_1"
  region = "us-west-1"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}

# AWS provider in us-west-2
provider "aws" {
  alias  = "us_west_2"
  region = "us-west-2"

  default_tags {
    tags = {
      "connorgurney:workload"    = "homelab-logging"
      "connorgurney:environment" = "shared"
    }
  }
}
