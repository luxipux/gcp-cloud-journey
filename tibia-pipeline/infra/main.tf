resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = "EU"

  uniform_bucket_level_access = true
}

resource "google_compute_instance" "vm" {
  name         = "vm-terraform"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = <<-EOF
    #!/bin/bash
    apt update
    apt install -y curl

    echo "Hello from Terraform VM $(date)" > /home/logro/hello.txt
  EOF
}
