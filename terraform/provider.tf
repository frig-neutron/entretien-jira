terraform {
  required_providers {
    jira = {
      source = "fourplusone/jira"
      version = "0.1.15"
    }
  }
}

provider "jira" {
  url = "https://lalliance.atlassian.net/"
}
