locals {
  name                = "PE"
  bucket              = "red-devops-terraform-state"
  dynamodb_table_name = "red-devops-lock-table"

  tags = {
    Name   = local.name
    Create = "terraform"
    Team   = var.team
  }

  network_acls = {
    default_inbound = [
      {
        rule_number = 100
        rule_action = "allow"
        from_port   = 0
        to_port     = 0
        protocol    = -1
        cidr_block  = "0.0.0.0/0"
      },
    ]
    default_outbound = [
      {
        rule_number = 100
        rule_action = "allow"
        from_port   = 0
        to_port     = 0
        protocol    = -1
        cidr_block  = "0.0.0.0/0"
      },
    ]
  }
}
