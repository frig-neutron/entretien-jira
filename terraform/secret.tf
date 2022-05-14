variable "jira_auth" {
  type = map(object({
    url             = string
    user            = string
    token           = string
    lead_account_id = string
  }))
}
