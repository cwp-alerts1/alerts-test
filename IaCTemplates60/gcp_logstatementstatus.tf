
resource "google_sql_database_instance" "default16" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
         database_flags {
            name  = "log_statement_stats"
            value = "on"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}
resource "google_sql_ssl_cert" "client_cert16" {
  common_name = "client-name"
  instance    = google_sql_database_instance.default.name
}
