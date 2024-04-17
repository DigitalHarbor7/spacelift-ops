# Terraform stack using github.com as VCS
resource "spacelift_stack" "k8s-cluster" {
  administrative    = true
  autodeploy        = true
  branch            = "main"
  description       = "Sandbox module"
  name              = "my-stack-name"
  project_root      = "foo-workspace"
  repository        = "spacelift-ops"
  terraform_version = "1.5.7"
}

# For a stack
resource "spacelift_context_attachment" "attachment" {
  context_id = "httpProxies"
  stack_id   = "my-stack-name"
  priority   = 0
}
resource "spacelift_context_attachment" "attachment" {
  context_id = "myPersonal"
  stack_id   = "my-stack-name"
  priority   = 0
}
