variable "nexus_host" {
  description = "Hostname for nexus"
  type        = string
  sensitive   = true
}

variable "nexus_login" {
  description = "Login for nexus"
  type        = string
  sensitive   = true
}

variable "nexus_password" {
  description = "Password for nexus"
  type        = string
  sensitive   = true
}