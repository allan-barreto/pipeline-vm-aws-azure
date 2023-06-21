# Regions

variable "aws_region" {
  description = "Default to US East (N. Virgínia) region."
  default     = "us-east-1"
}

variable "arm_region" {
  default = "East US"
}

# Keys

# Variables

variable "arm_account_tier" {
  description = "Storage account tier of Azure"
  type        = string
  default     = "Standard"
}

variable "arm_replication_type" {
  description = "Replication type of Storage Azure Data"
  type        = string
  default     = "LRS"

}

variable "AWS_PUBLIC_KEY" {
  type = string
}

variable "ARM_PUBLIC_KEY" {
  type = string
}