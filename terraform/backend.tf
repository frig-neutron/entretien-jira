terraform {
  backend "gcs" {
    bucket = "db-tfstate"
    prefix = "jira"
  }
}
