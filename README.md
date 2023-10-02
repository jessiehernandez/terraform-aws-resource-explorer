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
| [aws_resourceexplorer2_index.aggregator](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/resourceexplorer2_index) | resource |
| [aws_resourceexplorer2_index.local](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/resourceexplorer2_index) | resource |
| [aws_resourceexplorer2_view.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/resourceexplorer2_view) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_aggregator_index"></a> [enable\_aggregator\_index](#input\_enable\_aggregator\_index) | Whether or not to create an aggregator index. | `bool` | `false` | no |
| <a name="input_enable_local_index"></a> [enable\_local\_index](#input\_enable\_local\_index) | Whether or not to create a local index. | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to all created resources. | `map(string)` | `{}` | no |
| <a name="input_views"></a> [views](#input\_views) | Defines the views to create. | <pre>map(object({<br>    default_view = bool<br>    filters = list(object({<br>      filter_string = string<br>    }))<br>    tags = map(string)<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_index_arn_map"></a> [index\_arn\_map](#output\_index\_arn\_map) | Map of index types to their ARNs. |
| <a name="output_view_arn_map"></a> [view\_arn\_map](#output\_view\_arn\_map) | Map of view names to their ARNs. |

## Authors

Module is maintained by [Jessie Hernandez](https://github.com/jessiehernandez).
