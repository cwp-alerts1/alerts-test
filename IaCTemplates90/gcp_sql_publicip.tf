resource "google_sql_database_instance" "postgres2" {
  name             = "postgres-instance-1"
  database_version = "POSTGRES_11"

  settings {
    tier = "db-f1-micro"

    ip_configuration {
      dynamic "authorized_networks" {
    

        content {
          name  = "public"
          value = "0.0.0.0/0"
        }
      }
  }
}
}