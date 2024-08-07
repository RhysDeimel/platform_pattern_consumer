module "this" {
  source = "git@github.com:RhysDeimel/platform_pattern_producer.git//terraform/ec2_instance"
  
  # Can version modules with git tags and `ref`
  # source = "git@github.com:RhysDeimel/platform_pattern_producer.git//terraform/ec2_instance?ref=ec2_instance-1.0.0"

  environment = "dev"
  instance_type = "t3.small"
  name = "cards-webserver"

  # IDs are explicity declared here, but they can be interpolated using data sources and friendly names
  security_group_ids = ["sg-11112222333344445", "sg-66667777888899990"]
  subnet_id = "subnet-11223344556677889"
}
