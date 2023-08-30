variable "grafana_volume_size" {
  type        = string
  default     = "20Gi"
  description = "The persistent volume size to store Grafana data"
}

variable "certificate_issuer_name" {
  type        = string
  description = "The cert-manager certificate issuer name"
}

variable "grafana_ingress_host" {
  type        = string
  description = "The Grafana hostname placed on ingress"
}

variable "github_org_name" {
  type        = string
  description = "The name of the GitHub organization to allow sign-in to Granfa"
  default     = ""
}

variable "github_oauth_client_id" {
  type        = string
  sensitive   = true
  description = "GitHub OAuth app client id"
  default     = ""
}

variable "github_oauth_client_secret" {
  type        = string
  sensitive   = true
  description = "GitHub OAuth app client secret"
  default     = ""
}

variable "thanos_store_endpoints" {
  type        = list(string)
  default     = []
  description = "A list of store endpoints used by Thanos querier"
}
