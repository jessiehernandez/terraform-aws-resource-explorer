############
# OPTIONAL #
############

variable "enable_aggregator_index" {
  default     = false
  description = "Whether or not to create an aggregator index."
  type        = bool
}

variable "enable_local_index" {
  default     = true
  description = "Whether or not to create a local index."
  type        = bool
}

variable "tags" {
  default     = {}
  description = "Tags to apply to all created resources."
  type        = map(string)
}

variable "views" {
  default     = {}
  description = "Defines the views to create."
  type = map(object({
    default_view = bool
    filters = list(object({
      filter_string = string
    }))
    tags = map(string)
  }))
}
