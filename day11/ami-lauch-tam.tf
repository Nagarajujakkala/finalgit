resource "aws_ami_from_instance" "name" {
  name               = "test-ami"
  source_instance_id = "i-093851dcd8ec2daab"

}
resource "aws_launch_template" "LT" {
  name = "my-launch-template"
  iam_instance_profile {
    name = "test"

  }
  image_id                             = aws_ami_from_instance.name.id
  instance_initiated_shutdown_behavior = "terminate"
  instance_type                        = var.type
  key_name                             = var.key
  tags = {
    Name = "launch template"
  }
}