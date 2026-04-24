resource "aws_ecr_repository" "ingress_lambda_repo"{
    name = "ingress-lambda-repo"
    image_tag_mutability = "IMMUTABLE"
    image_scanning_configuration {
        scan_on_push = true
    }
}

resource "aws_ecr_repository" "ticket_processor_lambda_repo"{
    name = "ticket-processor-lambda-repo"
    image_tag_mutability = "IMMUTABLE"
    image_scanning_configuration {
        scan_on_push = true
    }
}

resource "aws_ecr_repository" "stale_ticket_lambda_repo"{
    name = "stale-ticket-lambda-repo"
    image_tag_mutability = "IMMUTABLE"
    image_scanning_configuration {
        scan_on_push = true
    }
}