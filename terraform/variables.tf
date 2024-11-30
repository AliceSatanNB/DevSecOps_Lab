variable "hyperv_host" {
  description = "Hostname for Hyper-V"
  type        = string
  sensitive   = true
}

variable "hyperv_login" {
  description = "Username for Hyper-V"
  type        = string
  sensitive   = true
}

variable "hyperv_password" {
  description = "Password for Hyper-V"
  type        = string
  sensitive   = true
}

variable "hyperv_vhd_path" {
  description = "Path to vhd for Hyper-V"
  type        = string
#  sensitive   = true
}

variable "hyperv_vm_path" {
  description = "Path to vm file for Hyper-V"
  type        = string
#  sensitive   = true
}

variable "iso_oracle_linux_8" {
  description = "Path to the Oracle Linux 8 ISO"
  type        = string
#  sensitive   = true
}