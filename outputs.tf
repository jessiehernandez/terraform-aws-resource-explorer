output "index_arn_map" {
  description = "Map of index types to their ARNs."
  value = {
    aggregator = (var.enable_aggregator_index ? aws_resourceexplorer2_index.aggregator[0].arn : null)
    local      = (var.enable_local_index ? aws_resourceexplorer2_index.local[0].arn : null)
  }
}

output "view_arn_map" {
  description = "Map of view names to their ARNs."
  value = {
    for k, v in aws_resourceexplorer2_view.this : k => v.arn
  }
}
