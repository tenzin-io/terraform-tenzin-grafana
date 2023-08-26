# README
A Terraform module repository to install Grafana on my home lab Kubernetes clusters.

<!-- BEGIN_TF_DOCS -->


## Resources

| Name | Type |
|------|------|
| [helm_release.grafana](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_issuer_name"></a> [certificate\_issuer\_name](#input\_certificate\_issuer\_name) | The cert-manager certificate issuer name | `string` | `"lets-encrypt"` | no |
| <a name="input_grafana_ingress_host"></a> [grafana\_ingress\_host](#input\_grafana\_ingress\_host) | The Grafana hostname placed on ingress | `string` | n/a | yes |
| <a name="input_grafana_volume_size"></a> [grafana\_volume\_size](#input\_grafana\_volume\_size) | The persistent volume size to store Grafana data | `string` | `"20Gi"` | no |
<!-- END_TF_DOCS -->
