#provider "aws" {}
#
#data "aws_caller_identity" "current" {}
#
#output "identity" {
#  value = data.aws_caller_identity.current
#}

provider "kubernetes" {}

data "kubernetes_all_namespaces" "allns" {}

output "all-ns" {
  value = data.kubernetes_all_namespaces.allns
}
