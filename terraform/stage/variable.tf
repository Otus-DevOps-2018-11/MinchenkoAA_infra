variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to thr public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-base-app"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-base-db"
}

variable app_machine_type {
  description = "Machine type for reddit app"
  default     = "g1-small"
}

variable db_machine_type {
  description = "Machine type for reddit db"
  default     = "g1-small"
}
