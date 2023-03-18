# Commenting region since its hard coded in main.tf

/*
variable "region" {
  default = "us-east-1"
}
*/


variable "user_arn" {
  default ="arn:aws:iam::047109936880:user/interview_company-employee" # IAM account of interview_company employee
}

variable key_spec {
  default = "SYMMETRIC_DEFAULT"
}

variable enabled {
  default = true
}