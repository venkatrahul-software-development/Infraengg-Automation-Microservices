# This creates SQS service handling high throughput

resource "aws_sqs_queue" "terraform_queue" {
  name                  = "fanout-queue.fifo"
  fifo_queue            = true
  deduplication_scope   = "messageGroup"
  fifo_throughput_limit = "perMessageGroupId"
}