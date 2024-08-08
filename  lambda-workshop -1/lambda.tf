resource "aws_lambda_function" "s3_transfer" {
  filename      = "lambda_function.zip"
  function_name = "s3_transfer_lambda"
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.11"

  environment {
    variables = {
      DESTINATION_BUCKET = aws_s3_bucket.internal.bucket
    }
  }
}
resource "aws_lambda_permission" "s3-trigger" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.s3_transfer.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = aws_s3_bucket.external.arn
}

resource "aws_s3_bucket_notification" "external_bucket_notification" {
  bucket     = aws_s3_bucket.external.id

  lambda_function {
    lambda_function_arn = aws_lambda_function.s3_transfer.arn
    events              = ["s3:ObjectCreated:*"]  # based on object creation 

    # filter_prefix = "/path"
    filter_suffix = ".txt"  # files extentions that will be moved
  }
}


