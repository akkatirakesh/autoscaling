output "name" {
  value = aws_autoscaling_group.myasg.name
  description="name of the auto scaling group"
}
output "id" {
  value = aws_autoscaling_group.myasg.id
  description="id of the auto scaling group"
}
output "arn" {
  value = aws_autoscaling_group.myasg.arn
  description="arn of the auto scaling group"
}