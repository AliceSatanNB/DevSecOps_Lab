terraform {
  required_providers {
    hyperv = {
      source  = "taliesins/hyperv"
      version = "1.2.1"
    }
  }
}

provider "hyperv" {
  user     = var.hyperv_login
  password = var.hyperv_password
  host     = var.hyperv_host
  port     = 5985
  https    = false
  insecure = true
}
resource "hyperv_vhd" "tf_test_vhd" {
  path     = var.hyperv_vhd_path
  vhd_type = "Dynamic"
  size     = 1024 * 1024 * 1024 * 10 # 10GB
}

resource "hyperv_machine_instance" "tf_test_2" {
  name                 = "tf_test_2"
  dynamic_memory       = true
  processor_count      = 4
  path                 = var.hyperv_vm_path
  memory_startup_bytes = 1024 * 1024 * 1024 * 1 # 1GB
  vm_firmware {
    enable_secure_boot = "Off"
  }

  hard_disk_drives {
    controller_type     = "Scsi"
    controller_location = 0
    controller_number   = 0
    path                = hyperv_vhd.tf_test_vhd.path
  }
  dvd_drives {
    controller_location = 1
    controller_number   = 0
    path                = var.iso_oracle_linux_8
  }
}