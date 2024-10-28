
# Configure the Kubernetes provider to connect with Minikube
provider "kubernetes" {
  config_path    = "~/.kube/config" # Assumes Minikube writes config here
  config_context = "minikube"       # Sets Minikube context for kubectl
}
