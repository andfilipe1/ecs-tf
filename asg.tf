resource "aws_launch_configuration" "default" {
  image_id                    = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  associate_public_ip_address = true
  security_groups             = ["${aws_security_group.default.id}"]
  iam_instance_profile        = "${aws_iam_instance_profile.default.id}"

 user_data = 
 <<EOF
<powershell>
Import-Module ECSTools
Initialize-ECSAgent -Cluster '${aws_ecs_cluster.default.name}' -EnableTaskIAMRole
</powershell>\n
<persist>true</persist>
EOF
}

resource "aws_autoscaling_group" "default" {
  vpc_zone_identifier  = ["${aws_subnet.subnet1.id}", "${aws_subnet.subnet2.id}"]
  launch_configuration = "${aws_launch_configuration.default.name}"
  max_size             = "${var.max_size}"
  min_size             = "${var.min_size}"
  desired_capacity     = "${var.desired_capacity}"
}
