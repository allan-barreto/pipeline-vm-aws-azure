resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = var.AWS_PUBLIC_KEY
}

resource "aws_instance" "vm" {
  ami                         = "ami-007855ac798b5175e"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = aws_subnet.subnet.id
  vpc_security_group_ids      = [aws_security_group.security_group.id]
  associate_public_ip_address = true

  tags = { Name = "vm-terraform " }

  depends_on = [aws_subnet.subnet, aws_security_group.security_group]
}