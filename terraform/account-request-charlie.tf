module "account_request_charlie" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "lufng+ct-developer-charlie@amazon.com"
    AccountName               = "Developer Charlie"
    ManagedOrganizationalUnit = "sandbox" 
    SSOUserEmail              = "lufng@fabeldyr.onmicrosoft.com"
    SSOUserFirstName          = "Developer"
    SSOUserLastName           = "Charlie"
  }

  account_tags = {
    "ABC:Owner"       = "lufng+ct-developer-charlie@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}