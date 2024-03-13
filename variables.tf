variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "db_name" {
  description = "The database name"
  default     = "lanchonetedatabase"
  type        = string
}

variable "instance_class" {
  description = "The RDS instance class"
  default     = "db.t2.micro"
  type        = string
}

variable "allocated_storage" {
  description = "The amount of allocated storage."
  type        = number
  default     = 5
}

variable "engine" {
  description = "The database engine"
  type        = string
  default     = "postgres"
}

variable "engine_version" {
  description = "The engine version"
  default     = "12"
  type        = number
}

variable "username" {
  description = "Username for the master DB user."
  default     = "databaseteste"
  type        = string
}

variable "password" {
  description = "password of the database"
  default     = "testes12a"
  type        = string
}

variable "skip_final_snapshot" {
  description = "skip snapshot"
  default     = "true"
  type        = string
}

variable "publicly_accessible" {
  description = "skip snapshot"
  default     = "true"
  type        = string
}
