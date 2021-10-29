# output "number_of_running_containers" {
#   value = length([docker_container.pgadmin4.name, docker_container.postgres.name])
# }

output "running_containers" {
  description = "name of running containers"
  value       = formatlist("container_name -> %s", [docker_container.pgadmin4.name, docker_container.postgres.name])
}

output "postgres_gui_url" {
  value = "http://localhost:${docker_container.pgadmin4.ports[0].external}/"
}
