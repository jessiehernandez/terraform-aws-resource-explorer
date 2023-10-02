############
# OPTIONAL #
############

variable "index_type" {
  default     = "LOCAL"
  description = "The type of index to create (either 'LOCAL' or 'AGGREGATOR')."
  type        = string
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
