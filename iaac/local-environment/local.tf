terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "postgres" {
  name = "postgres:latest"
}

resource "docker_image" "pgadmin4" {
  # name = "dpage/pgadmin4:latest"
  name = "thajeztah/pgadmin4:latest"
}

resource "docker_container" "postgres" {
  image = docker_image.postgres.latest
  name  = var.database_name
  # tty    = true
  # attach = true
  # rm = true
  ports {
    internal = 5432
    external = 5432
    protocol = "tcp"
  }
  # env = ["POSTGRES_USER=testuser", "POSTGRES_PASSWORD=ppppp", "POSTGRES_DB=skilldb"]
  env = ["POSTGRES_PASSWORD=ppppp"]
}

resource "docker_container" "pgadmin4" {
  image = docker_image.pgadmin4.latest
  name  = var.db_gui_name
  rm    = true
  ports {
    internal = 5050
    external = 5050
  }
}

# psql --host=localhost --port=5432 --username=postgres
