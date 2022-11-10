
resource "google_compute_instance" "serial" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {}
  metadata = {
     
  }
  
}
