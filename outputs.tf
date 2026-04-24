output "ingress_lambda_repo" {
  value = module.ecr.ingress_lambda_repo
}

output "ticket_processor_lambda_repo" {
  value = module.ecr.ticket_processor_lambda_repo
}

output "stale_ticket_lambda_repo" {
  value = module.ecr.stale_ticket_lambda_repo
}