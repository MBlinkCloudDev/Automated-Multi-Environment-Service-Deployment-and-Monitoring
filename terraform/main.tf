

resource "null_resource" "minikube" {
  provisioner "local-exec" {
    command = "minikube start --driver=${var.minikube_driver} --cpus=${var.minikube_cpus} --memory=${var.minikube_memory}"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "minikube delete"
  }
}

