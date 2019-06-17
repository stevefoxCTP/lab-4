variable "cluster_count" {
  description = "The number of servers desired."
}

variable "instance_type" {
  description = "The instance type"
}

variable "lab_username" {
  description = "The users lab username. Must be formatted like lab-user-x or the lab won't work."
}
