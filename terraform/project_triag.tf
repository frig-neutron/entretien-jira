variable "project_triage_settings" {
  type = object({
    # these have to be updated after the project is created
    permission_scheme   = string
    notification_scheme = string
  })
  default = {
    permission_scheme   = null
    notification_scheme = null
  }
}

resource "jira_project" "triage" {
  key              = "TRIAG"
  name             = "Triage"
  project_type_key = "software"
  lead_account_id  = var.jira_auth[terraform.workspace].lead_account_id
}
