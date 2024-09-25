# provider "aws" {

#     region = "eu-north-1"
# }

# resource "aws_iam_role" "github_actions_role" {
#     name = "GitHubActionsRole"
#     assume_role_policy = data.aws_iam_policy_document.github_assume_role_policy.json
# }

# data "aws_iam_policy_document" "github_assume_role_policy" {
#     statement {
#       effect = "Allow"
#       actions = ["sts:AssumeRoleWithWebIdentity"]

#     principals {
#       type = "Federated"
#       identifiers = ["arn:aws:iam::762233743707:oidc-provider/token.actions.githubusercontent.com"]
#     }

#     condition {
#       test = "StringEquals"
#       variable = "token.actions.githubusercontent.com:aud"
#       values = ["sts.amazonaws.com"]
#     }

#     condition {
#       test = "StringLike"
#       variable = "token.actions.githubusercontent.com:sub"
#       values =  ["repo:Vlad29012003/rsschool-devops-course-tasks:*"]
#     }
#     }

  
# }