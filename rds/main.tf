resource "aws_db_instance" "rds" {
  instance_class    = "db.t3.micro"
  engine_version    = "8.0.35"
  engine            = "mysql"
  allocated_storage = 10
  username = var.username
  password = var.password
  db_name = "myrdsdb"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot = true
}