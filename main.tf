#provider "aws" {}
#
#data "aws_caller_identity" "current" {}
#
#output "identity" {
#  value = data.aws_caller_identity.current
#}

provider "kubernetes" {}

resource "kubernetes_namespace_v1" "newnamespace" {
  metadata {
    annotations = {
      controlled-by = "flux"
    }

    labels = {
      mylabel = "label-value"
    }

    name = "flux-created-me-too"
  }
}

data "kubernetes_all_namespaces" "allns" {}

output "all-ns" {
  value = data.kubernetes_all_namespaces.allns
}
