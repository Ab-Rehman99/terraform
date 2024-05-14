variable "client_secret" {
  type = string
  sensitive = true
}
variable "password" {
  type = string
  sensitive = true
}

variable "resource_group_location" {
  default     = "uaenorth"
  description = "Location of the resource group."
}

variable "application_rg_name" {
  description = "Name of the application resource group"
  type        = string
  default = "abdulrehman-rg"
}

variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
  default = "abdul-key-vault123"
}

variable "certificate_name_prefix" {
  description = "The prefix for the certificate name"
  type        = string
  default     = "abdul-cert-"
}
