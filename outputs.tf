output "db_instance_endpoint" {
  value = aws_db_instance.lanchonete_bd.endpoint
}

output "db_instance_username" {
  value = var.username
}