variable "minikube_driver" {
  type    = string
  default = "docker" # Options: docker, virtualbox, hyperkit, etc.
}

variable "minikube_cpus" {
  type    = number
  default = 2
}

variable "minikube_memory" {
  type    = number
  default = 2048
}
