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
  default     = {}
}

variable "my_ip" {
  type        = string
  description = "Twoje publiczne IP do reguł NSG"
}

variable "vnet_address_space" {
  type        = string
  description = "Adresacja sieci wirtualnej "

}
variable "vnet_public_subnet_address" {
  type        = string
  description = "Adresacja publicznej podsieci sieci wirtualnej"
}

variable "vnet_private_subnet_address" {
  type        = string
  description = "Adresacja prywatnej podsieci sieci wirtualnej"
}
variable "vm_size" {
  type        = string
  description = "Rozmiar vmki"
  default     = "Standard_D2als_v6"

}

variable "admin_username" {
  type        = string
  description = "Admin username dla vm"
  default     = "azadmin"
}

variable "ssh_public_key_path" {
  type        = string
  description = "sciezka do pliku ssh"
  default     = "~/.ssh/petshop_dev.pub"
}