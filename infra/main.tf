terraform {
    required_providers {
        docker = {
        source = "kreuzwerker/docker"
        version = "3.0.2"
        }
    }
}

provider "docker" {
    host = "unix:///var/run/docker.sock"
}

resource "docker_image" "build" {
    name  = "tp_terraform:latest"
    build {
        context = "../app"
        dockerfile = "Dockerfile"
    }
}

resource "docker_container" "container" {
    name  = "TpTerraform"
    image = docker_image.build.name
    ports {
        internal = 8000 
        external = 8000 
    }

}