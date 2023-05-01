#ECR variables 
variable "ecr_name" {
  description = "The name of the ECR registery"
  type = list(string)
  default = null
}
variable "image_mutability" {
    description = "Provide image mutability"
    type = string
    default = "IMMUTABLE"
}
variable "encrypt_type" {
    description = "Provide type of encryption here"
    type = string
    default = null
}
