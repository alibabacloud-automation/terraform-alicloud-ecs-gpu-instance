################
# ECS Instance
################

output "this_availability_zone" {
  description = "The zone id of the instance."
  value       = module.ecs-instance.this_availability_zone
}

output "this_instance_public_ip" {
  description = "The instance public ip."
  value       = module.ecs-instance.this_public_ip
}

output "this_security_group_ids" {
  description = "The security group ids in which the instance."
  value       = module.ecs-instance.this_security_group_ids
}

output "this_vswitch_id" {
  description = "The vswitch id in which the instance."
  value       = module.ecs-instance.this_vswitch_id
}

output "this_instance_id" {
  description = "The instance id."
  value       = module.ecs-instance.this_instance_id
}

output "this_instance_name" {
  description = "The instance name."
  value       = module.ecs-instance.this_instance_name
}

output "this_private_ip" {
  description = "The instance private ip."
  value       = module.ecs-instance.this_private_ip
}

output "this_instance_tags" {
  description = "The tags for the instance."
  value       = module.ecs-instance.this_instance_tags
}

output "this_image_id" {
  description = "The image ID used by the instance."
  value       = module.ecs-instance.this_image_id
}

output "this_instance_type" {
  description = "The instance type."
  value       = module.ecs-instance.this_instance_type
}