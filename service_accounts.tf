# Create Controller Service Account
resource "kubernetes_service_account" "controller" {
  lifecycle {
    ignore_changes = [
      secret
    ]
  }
  metadata {
    labels = {
      app = "metallb"
    }
    name      = "controller"
    namespace = kubernetes_namespace.metallb_system.metadata.0.name
  }
}

# Create Speaker Service Account
resource "kubernetes_service_account" "speaker" {
  lifecycle {
    ignore_changes = [
      secret
    ]
  }
  metadata {
    labels = {
      app = "metallb"
    }
    name      = "speaker"
    namespace = kubernetes_namespace.metallb_system.metadata.0.name
  }
}