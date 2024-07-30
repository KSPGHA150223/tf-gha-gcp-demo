provider "google" {
  credentials = jsondecode(var.gcp_service_account_key)
  # credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image_family = var.image_family
      image_project = var.image_project
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata_startup_script =  <<-EOF
    #!/bin/bash\n\
    echo 'Hello, World!' > /var/www/html/index.html
    EOF

}
