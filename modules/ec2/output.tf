output "public_ip" {
  value = "${aws_instance.instancia-tf.public_ip}"
}