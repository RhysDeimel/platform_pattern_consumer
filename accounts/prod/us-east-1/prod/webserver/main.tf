module "this" {
  source = "git@github.com:RhysDeimel/platform_pattern_producer.git//terraform/ec2_instance?ref=ec2_instance-1.0.0"

  environment = "prod"
  instance_type = "t3.large"
  name = "cards-webserver"

  # IDs are explicity declared here, but they can be interpolated using data sources and friendly names
  security_group_ids = ["sg-54444333322221111", "sg-09999888877776666"]
  subnet_id = "subnet-98877665544332211"
}
