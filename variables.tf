variable "environment" {
  type = string
}

variable "namespace" {
  type = string
}

variable "region" {
  type = string
}

variable "github_auth" {
  type = string
}

variable "repository" {
  type = string
  description = "The owner and the repository name that will be use to deploy the application e.g. johndoe/mynodeapp"
}

