variable "ami" {
  type        = string
  default     = ""
  description = "description"
}
variable "type" {
  type        = string
  default     = ""
  description = "description"
}

variable "az" {
  type        = string
  default     = ""
  description = "description"
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "description"
}
variable "region" {
  type        = string
  default     = ""
  description = "description"
}
variable "vm_count" {
  type        = number
  default     = 1
  description = "description"
}

