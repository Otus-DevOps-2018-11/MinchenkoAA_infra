variable public_key_path {
  description = "Path to thr public key used for ssh access"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-base-db"
}

variable db_machine_type {
  description = "Machine type for reddit db"
  default     = "g1-small"
}
