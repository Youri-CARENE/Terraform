provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Création d'un réseau Docker personnalisé
resource "docker_network" "my_network" {
  name = var.network_name
}

# Création d'un volume Docker pour persister les données de l'application
resource "docker_volume" "my_volume" {
  name = var.volume_name
}

# Téléchargement de l'image Nginx
resource "docker_image" "nginx" {
  name = var.nginx_image
}

# Création du conteneur Nginx
resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = var.nginx_container_name
  networks_advanced {
    name = docker_network.my_network.name
  }
  volumes {
    host_path      = docker_volume.my_volume.name
    container_path = "/usr/share/nginx/html"
  }
  ports {
    internal = var.nginx_internal_port
    external = var.nginx_external_port
  }
  restart = "always"
}
