variable "jira_auth" {
  type = map(object({
    url   = string
    user  = string
    token = string
  }))
}
