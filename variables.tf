variable "private_key_algorithm" {
  type    = string
  default = "RSA"
}

variable "private_key_ecdsa_curve" {
  type    = string
  default = "P256"
}

variable "private_key_rsa_bits" {
  type    = string
  default = "2048"
}

variable "ca_cert" {
  type = string
}

variable "ca_key" {
  type = string
}

variable "ca_key_algorithm" {
  type = string
}

variable "organization_name" {
  type = string
}

variable "common_name" {
  type = string
}

variable "validity_period_hours" {
  type        = string
  default     = 8766
  description = "Default validity is 8766 hours which is 1 year"
}

variable "dns_names" {
  type    = list(string)
  default = null
}

variable "ip_addresses" {
  type    = list(string)
  default = null
}

variable "allowed_uses" {
  type = list(string)

  default = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]
}
