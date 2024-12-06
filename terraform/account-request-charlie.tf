module "account_request_dave" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "lufng+ct-developer-dave@amazon.com"
    AccountName               = "Developer Dave"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "lufng@fabeldyr.onmicrosoft.com"
    SSOUserFirstName          = "Developer"
    SSOUserLastName           = "Dave"
  }

  account_tags = {
    "ABC:Owner"       = "lufng+ct-developer-dave@amazon.com"
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