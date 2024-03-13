data "aws_vpc" "lanchonete_bd_vpc_default" {
  default = true
}

resource "aws_security_group" "lanchonete_bd_sg" {
  vpc_id      = data.aws_vpc.lanchonete_bd_vpc_default.id
  name        = var.db_name
  description = "Allow all inbound for Postgres"
  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "lanchonete_bd" {
  db_name                = var.db_name
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  username               = var.username
  password               = var.password
  skip_final_snapshot    = var.skip_final_snapshot
  publicly_accessible    = var.publicly_accessible
  vpc_security_group_ids = [aws_security_group.lanchonete_bd_sg.id]
}
