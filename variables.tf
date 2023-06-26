variable "region" {
  default     = ""
  description = "AWS region"
}

variable "vpc_name" {
  type    = string
  default = ""
}

variable "environment" {
  type    = string
  default = ""
}

variable "cidr_block" {
  type    = string
  default = ""
}

variable "enable_nat_gateway" {
  type    = bool
  default = false
}

variable "single_nat_gateway" {
  type    = bool
  default = false
}

variable "one_nat_gateway_per_az" {
  type    = bool
  default = false
}

variable "enable_vpn_gateway" {
  type    = bool
  default = false
}

variable "acceptor_vpc" {
  type    = bool
  default = false
}

variable "ecr_name" {
  type    = list(string)
  default = []
}

variable "prod_route_table_destination_cidr" {
  type    = any
  default = {}
}

variable "fozzy_route_table_destination_cidr" {
  type    = any
  default = {}
}


variable "vpc_private_subnets" {
  type    = string
  default = ""
}

variable "account_name" {
  type    = string
  default = ""
}

variable "account_id" {
  type    = string
  default = ""
}

