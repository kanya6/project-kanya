provider "aws" {
  region = var.region
}

module "rds_cluster_peoject" {
  source = "./WordPress-AWS"

  region = "" # us-east-1

  id_zone        = "" # your rout53 hosted zone ID 
  writer_domain  = "" #writer.yourdomain.com
  reader1_domain = "" #reader1.yourdomain.com
  reader2_domain = "" #reader2.yourdomain.com
  reader3_domain = "" #reader3.yourdomain.com

  cluster_identifier     = ""
  cluster_engine         = ""           # aurora-mysql
  cluster_engine_version = ""           #5.7.mysql_aurora.2.11.1
  database_name          = ""           # mydb
  username               = ""           # Admin
  password               = ""           # AdminPassword
  cluster_azs            = ["", "", ""] #"us-east-1a", "us-east-1b", "us-east-1c"


  instance_identifier        = "" #project-writer
  instance_type              = "" # db.t3.medium
  writer_az                  = "" # us-east-1a"
  instance_engine            = "" #aurora-mysql
  reader_count               = 3
  reader_instance_identifier = "" #project-reader
}

region = "us-east-1"

id_zone = "Z00090452UJXNHWURCVE9"
writer_domain = "writer.yourdomain.com"
reader1_domain = "reader1.yourdomain.com"
reader2_domain = "reader2.yourdomain.com"
reader3_domain = "reader3.yourdomain.com"

cluster_identifier = "three-tier-project" 
cluster_engine = "aurora-mysql"
cluster_engine_version = "5.7.mysql_aurora.2.11.1" 
database_name = "mydb" 
username = "kanya"
password = "AdminKanya6"
cluster_azs = ["us-east-1a", "us-east-1b", "us-east-1c",]


instance_identifier = "project-writer" 
instance_type = "db.t3.medium" 
writer_az = "us-east-1a"
instance_engine = "aurora-mysql"
reader_count = 3
reader_instance_identifier = "project-reader"