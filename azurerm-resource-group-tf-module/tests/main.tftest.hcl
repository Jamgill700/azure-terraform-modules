provider "azurerm" {
  features {}
  subscription_id = "# add sub ID here"
}

variables {}

run "custom_name_required_variable_test" {

  command = plan

  module {
    source = "./examples/custom-name"
  }

  assert {
   condition     = length(module.custom_name_rg.name) > 0
   error_message = "Test failed: the attribute value was not as expected."
  }

  assert {
   condition     = length(module.custom_name_rg.location) > 0
   error_message = "Test failed: the attribute value was not as expected."
  }
 
}

run "default_name_required_variable_test" {

  command = apply

  module {
    source = "./examples/default-name"
  }

  assert {
   condition     = length(module.default_name_rg.id) > 0
   error_message = "Test failed: the ID isn't created."
  }

  assert {
   condition     = length(module.default_name_rg.name) > 0
   error_message = "Test failed: there is no value for name."
  }

  assert {
   condition     = length(module.default_name_rg.location) > 0
   error_message = "Test failed: there is no value for location."
  }
 
}
