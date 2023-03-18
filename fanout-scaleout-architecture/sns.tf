# This creates SNS topic and subscriptions for SQS

resource "aws_sns_topic" "fanout_app_sns" {
  name = fanout_app_sns
}

resource "aws_sns_topic_subscription" "invoke_with_sns" {
  topic_arn = aws_sns_topic.fanout_app_sns.arn
  protocol  = "sqs"
  endpoint  = "arn:aws:sqs:us-west-2:432981146916:terraform-queue-too"
}
