resource "aws_db_instance" "mysql" {
  allocated_storage     = 10
  max_allocated_storage = 20
  username              = "team_1"
  password              = "8v8akK5AE7cn"
  identifier            = "${local.resource_prefix}-mysql"
  engine                = "mysql"
  engine_version        = "5.7"
  instance_class        = "db.m4.large"
  multi_az              = false
  parameter_group_name  = "default.mysql5.7"
  skip_final_snapshot   = true

  tags = {
    Component = local.aidevday_tags.component
    Team      = local.aidevday_tags.team
  }
}
