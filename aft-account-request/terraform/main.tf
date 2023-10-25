module "aft_management_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "email@email.com"
    AccountName  = "AFT Management Account"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail     = "email@email.com"
    SSOUserFirstName = "FirstName"
    SSOUserLastName  = "LastName"
  }

  account_tags = {
    "ABC:Owner"       = "email@email.com"
    "ABC:Environment" = "blog"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "YourName"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "ct-aft-account-provisioning-customizations"
}

module "transit_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "email@email.com"
    AccountName  = "Transit Account"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail     = "email@email.com"
    SSOUserFirstName = "FirstName"
    SSOUserLastName  = "LastName"
  }

  account_tags = {
    "ABC:Owner"       = "email@email.com"
    "ABC:Environment" = "blog"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "YourName"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "ct-aft-account-provisioning-customizations"
}

module "shared_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "email@email.com"
    AccountName  = "Shared Account"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail     = "email@email.com"
    SSOUserFirstName = "FirstName"
    SSOUserLastName  = "LastName"
  }

  account_tags = {
    "ABC:Owner"       = "email@email.com"
    "ABC:Environment" = "blog"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "YourName"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "ct-aft-account-provisioning-customizations"
}
