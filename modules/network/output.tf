output "vpc_id" {
  value = "${aws_default_subnet.default_subnet_tf.vpc_id}"
}
