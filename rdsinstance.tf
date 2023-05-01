
resource "aws_db_parameter_group" "rds" {
  name   = "rds"
  family = "postgres14"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}
resource "aws_db_instance" "rds" {
    identifier = "rds"
    db_name = "mydb"
    instance_class = "db.t3.micro"
    allocated_storage = 200
    engine = "postgres"
    engine_version = "14.1"
    password = var.db_password
    skip_final_snapshot = true
    publicly_accessible = true
    vpc_security_group_ids = [aws_security_group.rds.id]
    username = "postgres"
    db_subnet_group_name = module.vpc.database_subnet_group_name
    parameter_group_name   = aws_db_parameter_group.rds.name
}