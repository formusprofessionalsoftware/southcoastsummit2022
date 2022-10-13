variable "subscription-id" {
    type = string
}

variable "resource-group-name" {
    type = string
}

variable "main-app-plan-size" {
    type = string
    default = "Y1"
}

variable "main-app-plan-tier" {
    type = string
    default = "Dynamic"
}

variable "region" {
    type = string
    default = "uksouth"
}

variable "default-tags" {
    type = map
    default = {
        "terraform-managed" = "true"
    }
}