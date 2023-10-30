resource "aws_s3_bucket" "oat-project-data-landing" {
  bucket = "oat-project-data-landing-terraform"
}

resource "aws_iam_user" "access_user" {
  name = "S3AccessUserTerraform"
}

resource "aws_iam_policy_attachment" "user_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  users      = [aws_iam_user.access_user.name]
  name       = "AmazonS3FullAccess"
}

resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.access_user.name
}
