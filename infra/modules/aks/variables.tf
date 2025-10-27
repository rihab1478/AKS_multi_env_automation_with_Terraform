variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "name" {
  type = string
}

variable "default_node_pool" {
  type = object({
    name       = string
    node_count = number
    vm_size    = string
  })
}

variable "identity" {
  type = object({
    type = string
  })
}

variable "tags" {
  type = map(string)
}

variable "dns_prefix" {
  type = string
}
