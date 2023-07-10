#This is a file created by Darth-Mekus, the only living Sith Lord
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:1.19.6"
  keep_locally = true    // keep image after "destroy"
}
//This is a resource created by Luke Skywalker

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80
    external = 2224
  }
}
/* This is a multi-line comment that should span multiple lines. It should be sufficiently long to go over more than one line. Which it has. The Time Lord Dr. Who is on holiday in Barbados, using the Royal Caribbean cruise from Miami. Also Lord of the Ring Orcs are on the march so lookout whilst on holiday. They are normally seen as prters in holiday resorts. If you tip generously they will leave you alone. */

