# AWS Resource Explorer Terraform Module

Module that manages indexes and views in the AWS Resource Explorer.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.19.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_resourceexplorer2_index.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/resourceexplorer2_index) | resource |
| [aws_resourceexplorer2_view.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/resourceexplorer2_view) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_index_type"></a> [index\_type](#input\_index\_type) | The type of index to create (either 'LOCAL' or 'AGGREGATOR'). | `string` | `"LOCAL"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to all created resources. | `map(string)` | `{}` | no |
| <a name="input_views"></a> [views](#input\_views) | Defines the views to create. | <pre>map(object({<br>    default_view = bool<br>    filters = list(object({<br>      filter_string = string<br>    }))<br>    tags = map(string)<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_index_arn"></a> [index\_arn](#output\_index\_arn) | ARN of the created index. |
| <a name="output_view_arn_map"></a> [view\_arn\_map](#output\_view\_arn\_map) | Map of view names to their ARNs. |

## Authors

Module is maintained by [Jessie Hernandez](https://github.com/jessiehernandez).
