module "ecs" {
  source = "./modules/ecs"
}

module "ecr" {

  source       = "./modules/ecr"
  app_name     = "realworld"
  environment  = "dev"
  project_name = "test-project"
  tags         = { "name" = "test" }
}

resource "aws_db_instance" "default" {
  allocated_storage = 10
  engine            = "postgres"
  engine_version    = "12.5"
  instance_class    = "db.t2.micro"
  name              = "mydb"
  username          = "postgres"
  password          = "postgres"
  # tflint-ignore: aws_db_instance_default_parameter_group
  parameter_group_name = "default.postgres12"
  publicly_accessible  = true
}
