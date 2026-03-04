variable "subscription_id" {
  type        = string
  description = "Subscription ID dla wdrozenia terraform"

}
variable "tenant_id" {
  type        = string
  description = "Tenant ID dla wdrozenia terraform"

}
variable "project_name" {
  type        = string
  description = "uzywana do generowania nazw zasobow"

}
variable "environment" {
  type        = string
  description = "środowisko dev, staging, prod"
  default     = "dev"
}

variable "location" {
  type        = string
  description = "Region dla zasobow Azure"
  default     = "westeurope"
}

variable "account_replication_type" {
  type        = string
  description = "Typ replikacji storage account"
  default     = "LRS"
}
variable "tags" {
  type        = map(string)
  description = "Tagi dla zasobow Azure"
  default = {
  }
}   