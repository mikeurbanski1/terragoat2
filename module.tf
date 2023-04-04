
module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "my-lambda1"
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.8"

  source_path = "../src/lambda-function1"

  tags = {
    Name      = "my-lambda1"
    yor_trace = "2a1b9430-4024-4015-9873-dd45792e9bbe"
  }
}
