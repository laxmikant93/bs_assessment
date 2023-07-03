resource "aws_amplify_app" "Spacetourism" {
  name       = "Spacetourism"
  repository = "https://github.com/laxmikant93/bs_assessment.git"

  access_token = "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"


  auto_branch_creation_config {
    enable_auto_build           = true
    enable_pull_request_preview = true
  }

  build_spec = <<-EOT
    version: 1
    frontend:
      phases:
        preBuild:
          commands:
            - npm install
        build:
          commands:
            - npm run build
      artifacts:
        baseDirectory: .next
        files:
          - '**/*'
      cache:
        paths:
          - node_modules/**/*
  EOT
}
resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.Spacetourism.id
  branch_name = "main"
  framework = "nextjs - SSR"
  stage     = "PRODUCTION"
}
