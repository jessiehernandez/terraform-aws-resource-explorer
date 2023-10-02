resource "aws_resourceexplorer2_index" "this" {
  tags = var.tags
  type = var.index_type
}

resource "aws_resourceexplorer2_view" "this" {
  depends_on = [aws_resourceexplorer2_index.this]
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
