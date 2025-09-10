
resource "aws_autoscaling_group" "example" {
  name                      = "example-asg"
  max_size                  = 1
  min_size                  = 1
  desired_capacity          = 1
  launch_configuration      = aws_launch_configuration.example.name
  health_check_type         = "EC2"
  force_delete              = true
  tag {
    key                 = "Name"
    value               = var.name
    propagate_at_launch = true
  }
}

resource "aws_launch_configuration" "example" {
  name_prefix   = "example-lc-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  lifecycle {
    create_before_destroy = true
  }
}
