variable "database_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "postgres"
}

variable "db_gui_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "pgadmin4"
}
