resource "google_compute_instance" "confidential" {
  name         = var.gcp_name
  machine_type = var.machine_type
  boot_disk {
    auto_delete = false # Keep disk after shutdown (game data)
  }
  network_interface {
    network = "default"
    access_config {
        nat_ip       = "192.168.0.0"
    }
  }
  can_ip_forward = true
  metadata= {
    block-project-ssh-keys = true
    serial-port-enable = true
  
        }
  shielded_instance_config {
        enable_integrity_monitoring = false
        enable_vtpm                 = false
        }
  zone         = var.zone
  confidential_instance_config {
     enable_confidential_compute = false
  }
 service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
    email  = "[PROJECT_NUMBER]-compute@developer.gserviceaccount.com"
  } 
}

