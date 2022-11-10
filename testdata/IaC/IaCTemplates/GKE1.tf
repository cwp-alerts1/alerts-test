resource "google_container_cluster" "fail" {
  name               = var.name
  location           = var.location
  initial_node_count = 1
  project            = data.google_project.project.name

  node_config {

    shielded_instance_config {
    }
  }
}
