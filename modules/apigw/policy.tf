data "aws_iam_policy_document" "private" {
  statement {
    effect = "Deny"

    principals {
      type = "AWS" 
      identifiers = ["*"]
    }

    actions = [
      "execute-api:Invoke"
    ]

    resources = [
      "*"
    ]

    condition {
      test = "StringNotEquals"
      variable = "aws:sourceVpce"
      values = [
        var.vpc_private_endpoint_id
      ]
    }
  }

  statement {
    effect = "Allow"

    principals {
      type = "AWS" 
      identifiers = ["*"]
    }

    actions = [
      "execute-api:Invoke"
    ]

    resources = [
      "*"
    ]
  }
}