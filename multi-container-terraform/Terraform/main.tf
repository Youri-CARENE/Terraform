provider "docker" {}

resource "docker_network" "app_network" {
  name = "app-network"
}

resource "docker_image" "nginx_image" {
  name = "nginx:alpine"
}

resource "docker_container" "nginx_container" {
  name  = "web"
  image = docker_image.nginx_image.latest
  networks_advanced {
    name = docker_network.app_network.name
  }
  ports {
    internal = 80
    external = 8080
  }
}

resource "docker_image" "postgres_image" {
  name = "postgres:13"
}

resource "docker_container" "postgres_container" {
  name  = "db"
  image = docker_image.postgres_image.latest
  env = {
    POSTGRES_USER     = "postgres"
    POSTGRES_PASSWORD = "password"
    POSTGRES_DB       = "testdb"
  }
  networks_advanced {
    name = docker_network.app_network.name
  }
  ports {
    internal = 5432
    external = 5432
  }
}
