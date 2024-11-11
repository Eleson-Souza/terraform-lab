resource "aws_sqs_queue" "sqs_debug" {
  name                        = "terraform-example-queue.fifo"
  fifo_queue                  = true
  content_based_deduplication = true

  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true

  }
}
