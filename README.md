# README
A Terraform module repository to install Grafana on my home lab Kubernetes clusters.

<!-- BEGIN_TF_DOCS -->


## Resources

| Name | Type |
|------|------|
| [helm_release.grafana](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.thanos](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_issuer_name"></a> [certificate\_issuer\_name](#input\_certificate\_issuer\_name) | The cert-manager certificate issuer name | `string` | n/a | yes |
| <a name="input_github_oauth_client_id"></a> [github\_oauth\_client\_id](#input\_github\_oauth\_client\_id) | GitHub OAuth app client id | `string` | `""` | no |
| <a name="input_github_oauth_client_secret"></a> [github\_oauth\_client\_secret](#input\_github\_oauth\_client\_secret) | GitHub OAuth app client secret | `string` | `""` | no |
| <a name="input_github_org_name"></a> [github\_org\_name](#input\_github\_org\_name) | The name of the GitHub organization to allow sign-in to Granfa | `string` | `""` | no |
| <a name="input_grafana_ingress_host"></a> [grafana\_ingress\_host](#input\_grafana\_ingress\_host) | The Grafana hostname placed on ingress | `string` | n/a | yes |
| <a name="input_grafana_volume_size"></a> [grafana\_volume\_size](#input\_grafana\_volume\_size) | The persistent volume size to store Grafana data | `string` | `"20Gi"` | no |
| <a name="input_thanos_store_endpoints"></a> [thanos\_store\_endpoints](#input\_thanos\_store\_endpoints) | A list of store endpoints used by Thanos querier | `list(string)` | `[]` | no |
<!-- END_TF_DOCS -->
