locals {

  tags = {
    general = {
      "Terraform" = "true"
      "Owner"     = "Huralskyi"

    }
  }

  account     = lower(var.account_name)
  environment = lower(var.environment)

}
