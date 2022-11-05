# Required configuration variables

# Optional configuration
variable "metallb_version" {
  default     = "0.13.0"
  type        = string
  description = "MetalLB Version e.g. 0.10.2"
}

variable "controller_toleration" {
  default = []
  type    = list(map(any))
}

variable "controller_node_selector" {
  default = {}
  type    = map(any)
}