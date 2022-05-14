resource "jira_project" "triage" {
  key              = "TRIAG"
  name             = "Triage"
  project_type_key = "software"
  lead_account_id  = var.jira_auth[terraform.workspace].lead_account_id
}
