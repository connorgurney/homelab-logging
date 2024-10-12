# AWS in ap-northeast-1
module "aws_ap_northeast-1" {
  source    = "./aws"
  providers = { aws: aws.ap_northeast_1 }
}

# AWS in ap-northeast-2
module "aws_ap_northeast-2" {
  source    = "./aws"
  providers = { aws: aws.ap_northeast_2 }
}

# AWS in ap-northeast-3
module "aws_ap_northeast-3" {
  source    = "./aws"
  providers = { aws: aws.ap_northeast_3 }
}

# AWS in ap-south-1
module "aws_ap_south-1" {
  source    = "./aws"
  providers = { aws: aws.ap_south_1 }
}

# AWS in ap-southeast-1
module "aws_ap_southeast-1" {
  source    = "./aws"
  providers = { aws: aws.ap_southeast_1 }
}

# AWS in ap-southeast-2
module "aws_ap_southeast-2" {
  source    = "./aws"
  providers = { aws: aws.ap_southeast_2 }
}

# AWS in ca-central-1
module "aws_ca_central-1" {
  source    = "./aws"
  providers = { aws: aws.ca_central_1 }
}

# AWS in eu-central-1
module "aws_eu_central-1" {
  source    = "./aws"
  providers = { aws: aws.eu_central_1 }
}

# AWS in eu-north-1
module "aws_eu_north-1" {
  source    = "./aws"
  providers = { aws: aws.eu_north_1 }
}

# AWS in eu-west-1
module "aws_eu_west-1" {
  source    = "./aws"
  providers = { aws: aws.eu_west_1 }
}

# AWS in eu-west-2
module "aws_eu_west-2" {
  source    = "./aws"
  providers = { aws: aws.eu_west_2 }
}

# AWS in eu-west-3
module "aws_eu_west-3" {
  source    = "./aws"
  providers = { aws: aws.eu_west_3 }
}

# AWS in sa-east-1
module "aws_sa_east-1" {
  source    = "./aws"
  providers = { aws: aws.sa_east_1 }
}

# AWS in us-east-1
module "aws_us_east-1" {
  source    = "./aws"
  providers = { aws: aws.us_east_1 }
}

# AWS in us-east-2
module "aws_us_east-2" {
  source    = "./aws"
  providers = { aws: aws.us_east_2 }
}

# AWS in us-west-1
module "aws_us_west-1" {
  source    = "./aws"
  providers = { aws: aws.us_west_1 }
}

# AWS in us-west-2
module "aws_us_west-2" {
  source    = "./aws"
  providers = { aws: aws.us_west_2 }
}
