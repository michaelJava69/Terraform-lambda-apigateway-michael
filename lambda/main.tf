resource "aws_lambda_function" "lambda" {
  filename      = "./_build/${var.name}.zip"
  function_name = "${var.name}_${var.handler}"
  role          = "${var.role}"
  handler       = "${var.name}.${var.handler}"
  runtime       = "${var.runtime}"
}
