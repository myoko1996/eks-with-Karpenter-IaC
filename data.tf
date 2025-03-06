data "aws_availability_zones" "azs" {}

data "aws_ecrpublic_authorization_token" "token" {
  provider = aws.virginia
}

