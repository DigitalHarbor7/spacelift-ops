# define stack to provision all the infrastructure
module "a-new-site" {
  source      = "github.com/DigitalHarbor7/spacelift-ops//modules/digital-harbor-stack"
  description = "Stack to provision all the infrastructure for Caribbean Kings"

  repository = "digital-harbor-infrastructure"

  stack_name = "caribbean-kings-beta"

  project_root = "sites/caribbean-kings"
}
