variable "ingress_lambda_iam_role_arn" {
  type        = string
  description = "ARN of the Ingress Lambda Function"
}

variable "tpl_lambda_iam_role_arn" {
  type        = string
  description = "ARN of the Ticket Processor Lambda Function"
}

variable "stc_lambda_iam_role_arn" {
  type        = string
  description = "ARN of the Stale Ticket Checker Lambda Function"
}

# SQS Queue URL for Incoming Tickets

variable "sqs_ticket_queue_url" {
  type        = string
  description = "SQS Queue for incoming tickets"
}

# DynamoDB Table Name for Ticket Storage 

variable "ticket_table_name" {
  type        = string
  description = "DynamoDB Table for storing tickets"
}

# SES Sender Email for Notifications 

variable "ses_sender_email" {
  type        = string
  description = "SES Sender Email for sending notifications"
}

variable "it_email" {
  type        = string
  description = "IT team's email address for notifications"
}

variable "ingress_lambda_image_uri" {
  type = string
  description = "URI of the container image for the Ingress Lambda Function"
}

variable "ingress_lambda_image_tag" {
  type = string 
  description = "image version for ingress lambda"
}

variable "ticket_processor_lambda_image_uri" {
  type = string
  description = "URI of the container image for the Ticket Processor Lambda Function"
}

variable "ticket_processor_lambda_image_tag" {
  type = string 
  description = "image version for ticket processor lambda"
}

variable "stale_ticket_checker_lambda_image_uri" {
  type = string
  description = "URI of the container image for the Stale Ticket Checker Lambda Function"
}

variable "stale_ticket_checker_lambda_image_tag" {
  type = string
  description = "URI of the container image for the Stale Ticket Checker Lambda Function"
}