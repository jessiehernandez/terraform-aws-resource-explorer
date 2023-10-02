resource "aws_resourceexplorer2_index" "aggregator" {
  count = var.enable_aggregator_index ? 1 : 0
  tags  = var.tags
  type  = "AGGREGATOR"
}

resource "aws_resourceexplorer2_index" "local" {
  count = var.enable_local_index ? 1 : 0
  tags  = var.tags
  type  = "LOCAL"
}

resource "aws_resourceexplorer2_view" "this" {
  depends_on = [aws_resourceexplorer2_index.local]
  for_each   = var.views

  default_view = try(each.value.default_view, false)
  name         = each.key
  tags         = coalesce(try(each.value.tags, null), var.tags)

  dynamic "filters" {
    for_each = toset(each.value.filters)

    content {
      filter_string = filters.value.filter_string
    }
  }

  included_property {
    name = "tags"
  }
}
