variable "grafana_volume_size" {
  type        = string
  default     = "20Gi"
  description = "The persistent volume size to store Grafana data"
}

variable "certificate_issuer_name" {
  type        = string
  default     = "lets-encrypt"
  description = "The cert-manager certificate issuer name"
}

variable "grafana_ingress_host" {
  type        = string
  description = "The Grafana hostname placed on ingress"
}
