
resource "google_compute_instance" "publicIp" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {}
  can_ip_forward = false

  network_interface {
    network = "default"

    access_config {
     name = "External NAT"
     natIP = "130.211.181.55"
    }
  }
}
