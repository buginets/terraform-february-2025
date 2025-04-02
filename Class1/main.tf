resource "aws_iam_user" "user1" {
  name = "kaizen1"
}


resource "aws_iam_user" "user2" {
  name = "kaizen2"
}

resource "aws_iam_group" "group1" {
  name = "developers"

}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.user1.name,
    aws_iam_user.user2.name
  ]

  group = aws_iam_group.group1.name
}

resource "aws_iam_user" "user3" {
  name = "hello"
}