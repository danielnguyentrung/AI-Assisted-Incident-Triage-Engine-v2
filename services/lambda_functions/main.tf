# Ingress Lambda Function

resource "aws_lambda_function" "ingress_lambda" {
  function_name = "ingress-lambda"
  role          = var.ingress_lambda_iam_role_arn

  package_type = "Image"
  image_uri    = "${var.ingress_lambda_image_uri}:${var.ingress_lambda_image_tag}"

  timeout = 10

  environment {
    variables = {
      QUEUE_URL = var.sqs_ticket_queue_url
    }
  }
}

# Ticket Processor Lambda Function

resource "aws_lambda_function" "ticket_processor_lambda" {
  function_name = "ticket-processor-lambda"
  role          = var.tpl_lambda_iam_role_arn

  package_type = "Image"
  image_uri    = "${var.ticket_processor_lambda_image_uri}:${var.ticket_processor_lambda_image_tag}"

  timeout = 30

  environment {
    variables = {
      USERS_TABLE      = var.ticket_table_name
      SENDER_EMAIL     = var.ses_sender_email
      BEDROCK_MODEL_ID = "anthropic.claude-3-haiku-20240307-v1:0"
    }
  }
}

# Stale Ticket Checker Lambda Function

resource "aws_lambda_function" "stale_ticket_checker_lambda" {
  function_name = "stale-ticket-checker-lambda"
  role          = var.stc_lambda_iam_role_arn

  package_type = "Image"
  image_uri    = "${var.stale_ticket_checker_lambda_image_uri}:${var.stale_ticket_checker_lambda_image_tag}"

  timeout = 10

  environment {
    variables = {
      USERS_TABLE      = var.ticket_table_name
      SES_SENDER_EMAIL = var.ses_sender_email
      IT_EMAIL         = var.it_email
    }
  }
}
