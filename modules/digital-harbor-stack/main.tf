# Terraform stack using github.com as VCS
resource "spacelift_stack" "my_stack" {
  administrative    = true
  autodeploy        = true
  branch            = "main"
  description       = var.description
  name              = var.stack_name
  project_root      = var.project_root
  repository        = var.repository
  terraform_version = "1.5.7"
}

# For a stack
resource "spacelift_context_attachment" "proxies" {
  context_id = "httpProxies"
  stack_id   = "my-stack-name"
  priority   = 0
}
resource "spacelift_context_attachment" "credentials" {
  context_id = "myPersonal"
  stack_id   = "my-stack-name"
  priority   = 0
}
