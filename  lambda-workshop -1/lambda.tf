resource "aws_lambda_function" "s3_transfer" {
  filename      = "lambda_function.zip"
  function_name = "s3_transfer_lambda"
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.12"

  ephemeral_storage {
    size = 512   # Min 512 MB and the Max 10240 MB
  }
}
resource "aws_lambda_permission" "s3-trigger" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.s3_transfer.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = aws_s3_bucket.external.arn
}
