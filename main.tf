resource "helm_release" "grafana" {
  name             = "grafana"
  chart            = "grafana"
  repository       = "https://grafana.github.io/helm-charts"
  version          = "6.58.10"
  namespace        = "grafana"
  create_namespace = true
  values = [
    templatefile("${path.module}/templates/grafana-values.yaml", {
      grafana_volume_size        = var.grafana_volume_size
      grafana_ingress_host       = var.grafana_ingress_host
      certificate_issuer_name    = var.certificate_issuer_name
      github_org_name            = var.github_org_name
      github_oauth_client_id     = var.github_oauth_client_id
      github_oauth_client_secret = var.github_oauth_client_secret
    })
  ]
  depends_on = [helm_release.thanos]
}

resource "helm_release" "thanos" {
  name             = "thanos"
  chart            = "thanos"
  repository       = "https://charts.bitnami.com/bitnami"
  version          = "12.12.1"
  namespace        = "grafana"
  create_namespace = true
  values = [
    templatefile("${path.module}/templates/thanos-values.yaml", {
      thanos_store_endpoints = var.thanos_store_endpoints
    })
  ]
}
