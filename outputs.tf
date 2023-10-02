output "index_arn" {
  description = "ARN of the created index."
  value       = aws_resourceexplorer2_index.this.arn
}

output "view_arn_map" {
  description = "Map of view names to their ARNs."
  value = {
    for k, v in aws_resourceexplorer2_view.this : k => v.arn
  }
}
