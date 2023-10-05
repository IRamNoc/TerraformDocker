provider "docker" {
  source = "kreuzwerker/docker"
}

resource "docker_image" "build" {
  name         = "nom_de_votre_image"
  build {
    context    = "../app"  # Chemin vers le répertoire contenant le Dockerfile
    dockerfile = "../app/Dockerfile"
  }
}

resource "docker_container" "container" {
  name  = "nom_de_votre_container"
  image = docker_image.build.name
}

