resource "aws_security_group" "rds" {
    name="Private RDS sg"
    description = "Security Group with SSH port open for everybody (IPv4 CIDR), egress ports are all world open"
    vpc_id = module.vpc.vpc_id
    ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
tags = {
  Name= "rds"
}
}
