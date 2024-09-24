variable "location2" {
  type        = string
  description = "(Optional) Azure region to use. Defaults to southeast asia."

  validation {
    condition     = contains(["southeast asia", "eastus"], var.location2)
    error_message = "Azure region to use. eastus to southeast asia"
  } 
  #default     = "southeast asia"
}


variable "vnetasia" {
  type = list
  description = "Azure Vnet name for Souteast asia region"

}

variable "address_space" {
type = list(string)
}
variable "address_space2" {
type = list(string)  
}

variable "vnetus" {
type = string
description = "Azure Vnet name for eastus  region"
  
}
