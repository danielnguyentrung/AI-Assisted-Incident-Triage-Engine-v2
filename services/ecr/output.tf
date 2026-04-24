output "ingress_lambda_repo" {
    value = aws_ecr_repository.ingress_lambda_repo.repository_url
    description = "ECR Repository for Ingress Lambda Function"
}

output "ticket_processor_lambda_repo" {
    value = aws_ecr_repository.ticket_processor_lambda_repo.repository_url
    description = "ECR Repository for Ticket Processor Lambda Function"
}

output "stale_ticket_lambda_repo" {
    value = aws_ecr_repository.stale_ticket_lambda_repo.repository_url
    description = "ECR Repository for Stale Ticket Checker Lambda Function" 
}