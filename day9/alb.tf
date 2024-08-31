resource "aws_lb_target_group" "tg" {
    target_type = "instance"
    name = "mytg"
    protocol = "HTTP"
    port = "80"
    vpc_id = aws_vpc.name.id
    protocol_version = "HTTP1"

}
resource "aws_lb" "lb" {
    load_balancer_type = "application"
    name = "mylb"
    internal = "false"
    subnets = [aws_subnet.public1.id, aws_subnet.public2.id]
    security_groups = [aws_security_group.sg.id]
  
}

resource "aws_lb_listener" "alb1" {
    load_balancer_arn = aws_lb.lb.arn
    protocol = "HTTP"
    port = "80"

    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.tg.arn

    }
  
}