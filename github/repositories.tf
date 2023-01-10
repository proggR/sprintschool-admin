module "github" {
  source = "./module/repository/"

  # repository
  repository-name        = "github"
  repository-description = "github organization management with terraform"
  repository-topics      = ["terraform", "github"]

  repository-private = false

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = [
    {
      branch                                     = "master"
      enforce_admins                             = true
      require_signed_commits                     = true
      status_check-strict                        = true
      status_check-contexts                      = ["terraform"]
      pr_reviews-required_approving_review_count = 1
      pr_reviews-require_code_owner_reviews      = false
      pr_reviews-dismiss_stale_reviews           = false
      pr_reviews-dismissal_users                 = []
      pr_reviews-dismissal_teams                 = []
      restrictions-users                         = []
      restrictions-teams                         = []
    }
  ]

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "api-validator" {
  source = "./module/repository/"

  # repository
  repository-name        = "api-validator"
  repository-description = "Provide helpers that validate a request against an OpenAPi/Swagger2 API description"

  repository-private = false

  repository-has_projects = false

  repository-auto_init      = false
  repository-default_branch = "master"

  # webhooks
  webhooks = [
    {
      url          = "https://notify.travis-ci.org"
      secret       = null
      content_type = "form"
      insecure_ssl = false
      active       = true
      events       = ["create", "delete", "issue_comment", "member", "public", "pull_request", "push", "repository"]
    },
    {
      url          = "https://scrutinizer-ci.com/github-callback"
      secret       = null
      content_type = "json"
      insecure_ssl = false
      active       = true
      events       = ["commit_comment", "issue_comment", "pull_request", "pull_request_review_comment", "push", "status"]
    },
    {
      url          = "https://packagist.org/api/update-package?username=guillemcanal"
      secret       = null
      content_type = "json"
      insecure_ssl = false
      active       = true
      events       = ["push"]
      secret       = var.packagist_token
    }
  ]

  repository-issue_labels = concat(var.default-issue_labels)
}

module "amp-jekyll" {
  source = "./module/repository/"

  # repository
  repository-name        = "amp-jekyll"
  repository-description = "Build Accelerated Mobile Page versions of your Jekyll posts"

  repository-private = false

  repository-has_projects = false

  repository-auto_init      = false
  repository-default_branch = "master"

  repository-issue_labels = concat(var.default-issue_labels)
}

module "blog_eleven-labs_com" {
  source = "./module/repository/"

  # repository
  repository-name         = "blog.eleven-labs.com"
  repository-description  = "Eleven-labs blog"
  repository-homepage_url = "https://blog.eleven-labs.com"
  repository-topics       = ["jekyll", "blog", "article", "le-blog"]

  repository-private = false

  repository-has_projects = false

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = [
    {
      branch                                     = "master"
      enforce_admins                             = false
      require_signed_commits                     = false
      status_check-strict                        = true
      status_check-contexts                      = ["deploy"]
      pr_reviews-required_approving_review_count = 1
      pr_reviews-require_code_owner_reviews      = false
      pr_reviews-dismiss_stale_reviews           = false
      pr_reviews-dismissal_users                 = [module.PEJOUTThomas.login]
      pr_reviews-dismissal_teams                 = []
      restrictions-users                         = [module.PEJOUTThomas.login]
      restrictions-teams                         = []
    }
  ]

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "black_hole" {
  source = "./module/repository/"

  # repository
  repository-name         = "black-hole"
  repository-description  = "WilsonBook Back-end"
  repository-homepage_url = "https://planets-bo.eleven-labs.com"
  repository-topics       = []

  repository-private = true

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "codelabs" {
  source = "./module/repository/"

  # repository
  repository-name = "codelabs"

  repository-private = false

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = [
    {
      branch                                     = "master"
      enforce_admins                             = false
      require_signed_commits                     = false
      status_check-strict                        = true
      status_check-contexts                      = ["ci/circleci: node8"]
      pr_reviews-required_approving_review_count = 1
      pr_reviews-require_code_owner_reviews      = false
      pr_reviews-dismiss_stale_reviews           = false
      pr_reviews-dismissal_users                 = [module.PEJOUTThomas.login]
      pr_reviews-dismissal_teams                 = []
      restrictions-users                         = [module.PEJOUTThomas.login]
      restrictions-teams                         = []
    }
  ]

  # webhooks
  webhooks = [
    {
      url          = "https://notify.travis-ci.org"
      secret       = null
      content_type = "form"
      insecure_ssl = false
      active       = true
      events       = ["create", "delete", "issue_comment", "member", "public", "pull_request", "push", "repository"]
    },
    {
      url          = "https://circleci.com/hooks/github"
      secret       = null
      content_type = "form"
      insecure_ssl = false
      active       = true
      events       = ["commit_comment", "create", "delete", "fork", "gollum", "issue_comment", "issues", "member", "public", "pull_request", "pull_request_review_comment", "push", "release", "status", "team_add", "watch"]
    }
  ]

  repository-issue_labels = concat(var.default-issue_labels)
}

module "desksharing" {
  source = "./module/repository/"

  # repository
  repository-name = "desksharing"

  repository-private = true

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "eleven-labs_com" {
  source = "./module/repository/"

  # repository
  repository-name         = "eleven-labs.com"
  repository-description  = "https://eleven-labs.com website"
  repository-homepage_url = "https://eleven-labs.com"
  repository-topics       = []

  repository-private = true

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "jekyll-multiple-languages-plugin" {
  source = "./module/repository/"

  # repository
  repository-name        = "jekyll-multiple-languages-plugin"
  repository-description = "I18n support for Jekyll and Octopress"

  repository-private = false

  repository-has_projects = false

  repository-auto_init      = false
  repository-default_branch = "master"

  repository-issue_labels = concat(var.default-issue_labels)
}

module "nebula_react" {
  source = "./module/repository/"

  # repository
  repository-name         = "nebula-react"
  repository-description  = "WilsonBook Front-end"
  repository-homepage_url = "https://planets.eleven-labs.com"
  repository-topics       = []

  repository-private = true

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "trainings" {
  source = "./module/repository/"

  # repository
  repository-name        = "trainings"
  repository-description = "Wilson trainings"
  repository-topics      = []

  repository-private = true

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "wheel-of-fortune" {
  source = "./module/repository/"

  # repository
  repository-name = "wheel-of-fortune"

  repository-private = false

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "typescript-boilerplates" {
  source = "./module/repository/"

  # repository
  repository-name        = "typescript-boilerplates"
  repository-description = "Typescript Boilerplates"
  repository-topics      = []

  repository-private = false

  repository-auto_init      = false
  repository-default_branch = "master"

  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "eslint-config" {
  source = "./module/repository/"

  # repository
  repository-name        = "eslint-config"
  repository-description = "ESLint and Prettier config for Eleven Labs"
  repository-homepage_url = "https://www.npmjs.com/package/@elevenlabs/eslint-config"
  repository-topics      = []


  repository-private = false

  repository-auto_init      = false
  repository-default_branch = "master"


  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}

module "design-system" {
  source = "./module/repository/"

  # repository
  repository-name         = "design-system"
  repository-description  = "Eleven Labs - Design System"
  repository-homepage_url = "https://eleven-labs.github.io/design-system/"
  repository-topics       = []


  repository-private = false

  repository-auto_init      = false
  repository-default_branch = "master"


  # branches protection
  branches_protection = []

  # webhooks
  webhooks = []

  repository-issue_labels = concat(var.default-issue_labels)
}
