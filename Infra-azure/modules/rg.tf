module "rg1" {
  
  source = "../infra-azure/Terraform/resource_group"
  resource_group_name = "github-rg-poc"
  location = "eastus"
}

