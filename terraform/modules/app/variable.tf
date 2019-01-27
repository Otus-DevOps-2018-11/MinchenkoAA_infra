variable public_key_path {
  description = "Path to thr public key used for ssh access"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-base-app"
}

variable app_machine_type {
  description = "Machine type for reddit app"
  default     = "g1-small"
}
