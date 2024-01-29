variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "ExampleNginxContainer"
}

variable "ports" {
  description = "Values of ports"
  type = object({
    internal_port = number
    external_port = number
  })
  default = {
    internal_port = 80
    external_port = 8080
  }
}