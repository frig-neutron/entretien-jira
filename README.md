# Entretien Jira

Jira config as code of the entretien TF instance


### Git crypt (one time)

    git-crypt init
    git-crypt add-gpg-user 22BD951E6D487BFE5371FD432E91B6B62DE72DBC

The `.gitattributes` file in the secrets dir makes `git-crypt` crypt

## Secret storage strategy

Since we're only using one set of production creds (jira, gmail) I'm going to go simple and just
encrypt the whole TF secrets varfile. This implies that to use Terraform you need to
unlock `git-crypt`.

## Environments

Using 2 environments: stg/prd.

* Staging env goes to `STAGING` project.
* Production env goes to `TRIAG` project.

Project state is stored in TF workspaces.

* The production workspace is `prd`,
* The staging workspace is `stg`
* The default workspace exists, but is unused

Applying terraform plans can be done in one of two ways:

    terraform workspace select stg
    terraform apply

..or in one shot:

    TF_WORKSPACE=stg terraform plan apply

## Jira
 - `account ID` is last component of URL in the `Admin / site / Users` user info page
