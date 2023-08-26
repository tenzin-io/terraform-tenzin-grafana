resource "helm_release" "grafana" {
  name             = "grafana"
  chart            = "grafana"
  repository       = "https://grafana.github.io/helm-charts"
  version          = "6.58.10"
  namespace        = "grafana"
  create_namespace = true
  values = [
    templatefile("${path.module}/templates/grafana-values.yaml", {
      grafana_volume_size     = var.grafana_volume_size
      grafana_ingress_host    = var.grafana_ingress_host
      certificate_issuer_name = var.certificate_issuer_name
    })
  ]
}