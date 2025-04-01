provider "aws" {
    region = "eu-central-1"
}

resource "aws_ecr_repository" "app_repo" {
    name                 = "larabase"
    image_tag_mutability = "MUTABLE"

    image_scanning_configuration {
        scan_on_push = false
    }
}

output "repository_url" {
    description = "The URL of the repository"
    value       = aws_ecr_repository.app_repo.repository_url
}
