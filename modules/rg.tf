module "rg1" {
  
  source = "../Terraform/rg.tf"
  resource_group_name = "github-rg-poc"
  location = "eastus"
}

