terraform {
  required_providers {
    jira = {
      source  = "fourplusone/jira"
      version = "0.1.15"
    }
  }
}

provider "jira" {
  url      = var.jira_auth[terraform.workspace].url
  user     = var.jira_auth[terraform.workspace].user
  password = var.jira_auth[terraform.workspace].token
}
