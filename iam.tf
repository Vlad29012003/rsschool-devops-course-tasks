resource "aws_iam_role" "github_actions_role" {
    name               = var.role_name
    assume_role_policy = data.aws_iam_policy_document.github_assume_role_policy.json
}

data "aws_iam_policy_document" "github_assume_role_policy" {
    statement {
        effect = "Allow"
        actions = ["sts:AssumeRoleWithWebIdentity"]

        principals {
            type        = "Federated"
            identifiers = ["arn:aws:iam::762233743707:oidc-provider/token.actions.githubusercontent.com"]
        }

        condition {
            test     = "StringEquals"
            variable = "token.actions.githubusercontent.com:aud"
            values   = ["sts.amazonaws.com"]
        }

        condition {
            test     = "StringLike"
            variable = "token.actions.githubusercontent.com:sub"
            values   = ["repo:Vlad29012003/rsschool-devops-course-tasks:*"]
        }
    }
}

resource "aws_iam_role_policy_attachment" "ec2_full_access" {
    role      = aws_iam_role.github_actions_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
    depends_on = [aws_iam_role.github_actions_role]
}

resource "aws_iam_role_policy_attachment" "route53_full_access" {
    role      = aws_iam_role.github_actions_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
}

resource "aws_iam_role_policy_attachment" "s3_full_access" {
    role      = aws_iam_role.github_actions_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_role_policy_attachment" "iam_full_access" {
    role      = aws_iam_role.github_actions_role.name
    policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_iam_role_policy_attachment" "vpc_full_access" {
    role      = aws_iam_role.github_actions_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
}

resource "aws_iam_role_policy_attachment" "sqs_full_access" {
    role      = aws_iam_role.github_actions_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
}

resource "aws_iam_role_policy_attachment" "eventbridge_full_access" {
    role      = aws_iam_role.github_actions_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEventBridgeFullAccess"
}
