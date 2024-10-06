# terraform.tf

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "my_image" {
  name = "terraform-demo"
  build {
    context    = "${path.module}/."
    dockerfile = "${path.module}/Dockerfile"
  }
}

resource "docker_container" "my_container" {
  image = docker_image.my_image.latest
  name  = "terraform-demo-container"
  ports {
    internal = 8080
    external = 8080
  }
}
