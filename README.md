> ⚠️ This module is deprecated. ⚠️
> 
> Use [scaffoldly/stage-secrets/github](https://registry.terraform.io/modules/scaffoldly/stage-secrets/github) instead

[![Maintained by Scaffoldly](https://img.shields.io/badge/maintained%20by-scaffoldly-blueviolet)](https://github.com/scaffoldly)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/scaffoldly/terraform-aws-public-website-stage-secrets)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.15.0-blue.svg)

## Description

Manage deployment secrets into GitHub Actions Secrets for a repository

## Usage

```hcl
module "aws_iam" {
  source = "scaffoldly/public-website-stage-secrets/aws"

  for_each = module.cloudfront

  stage           = each.value.stage
  repository_name = module.repository.name
  bucket_name     = each.value.bucket_name
  distribution_id = each.value.distribution_id

  depends_on = [
    module.repository
  ]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.33.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 4.9.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.33.0 |
| <a name="provider_github"></a> [github](#provider\_github) | 4.9.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.access_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [github_actions_secret.deployer_aws_access_key](https://registry.terraform.io/providers/integrations/github/4.9.4/docs/resources/actions_secret) | resource |
| [github_actions_secret.deployer_aws_account_id](https://registry.terraform.io/providers/integrations/github/4.9.4/docs/resources/actions_secret) | resource |
| [github_actions_secret.deployer_aws_bucket_name](https://registry.terraform.io/providers/integrations/github/4.9.4/docs/resources/actions_secret) | resource |
| [github_actions_secret.deployer_aws_cloudfont_distribution_id](https://registry.terraform.io/providers/integrations/github/4.9.4/docs/resources/actions_secret) | resource |
| [github_actions_secret.deployer_aws_default_region](https://registry.terraform.io/providers/integrations/github/4.9.4/docs/resources/actions_secret) | resource |
| [github_actions_secret.deployer_aws_partition](https://registry.terraform.io/providers/integrations/github/4.9.4/docs/resources/actions_secret) | resource |
| [github_actions_secret.deployer_aws_secret_key](https://registry.terraform.io/providers/integrations/github/4.9.4/docs/resources/actions_secret) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.base](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The bucket name for deployments | `string` | n/a | yes |
| <a name="input_distribution_id"></a> [distribution\_id](#input\_distribution\_id) | The distribution ID | `string` | n/a | yes |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | The GitHub Repository Name | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | The stage (e.g. live, nonlive) | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
