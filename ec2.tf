resource "aws_instance" "foo" {
  count             = var.vm_count
  ami               = var.ami
  instance_type     = var.type
  availability_zone = var.az
  tags              = var.tags
}

