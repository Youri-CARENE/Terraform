output "web_url" {
  value = "http://localhost:8080"
}

output "db_info" {
  value = {
    user     = "postgres"
    password = "password"
    db       = "testdb"
    port     = 5432
  }
}
