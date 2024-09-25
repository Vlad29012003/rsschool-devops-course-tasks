# provider "aws" {
#     region = "eu-north-1"  
# }

# resource "aws_iam_role" "github_actions_role" {
#     name = "GitHubActionsRole"
#     assume_role_policy = data.aws_iam_policy_document.github_assume_role_policy.json
# }

# data "aws_iam_policy_document" "github_assume_role_policy" {
#     statement {
#       actions = ["str:AssumeRole"]

#     principals {
#       type = "Service"
#       identifiers = ["ecs-tasks.amazonaws.com"]
#     }
#   }
# }


# resource "aws_iam_role_policy_attachment" "ec2_full_access" {
#     role = aws_iam_role.github_actions_role.name
#     policy_arn = "arn:aws:iam::aws:policy/AmazonEc2FullAccess"
  
# }

# resource "aws_iam_role_policy_attachment" "route53_full_access" {
#     role = aws_iam_role.github_actions_role.name
#     policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
  
# }

# resource "aws_iam_role_policy_attachment" "s3_full_access" {
#     role = aws_iam_role.github_actions_role.name
#     policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
# }


# resource "aws_iam_role_policy_attachment" "iam_full_access" {
#     role = aws_iam_role.github_actions_role.name
#     policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
# }

# resource "aws_iam_role_policy_attachment" "vpc_full_access" {
#     role = aws_iam_role.github_actions_role.name
#     policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
# }

# resource "aws_iam_role_policy_attachment" "sqs_full_access" {
#     role = aws_iam_role.github_actions_role.name
#     policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
# }

# resource "aws_iam_role_policy_attachment" "eventbridge_full_access" {
#     role = aws_iam_role.github_actions_role.name
#     policy_arn = "arn:aws:iam::aws:policy/AmazonEventBridgeFullAccess"

# }