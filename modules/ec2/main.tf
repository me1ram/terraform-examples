resource "aws_key_pair" "temp" {
  key_name   = var.key_pair_name
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJTBxg6S6kzwCM4gJVsg5lBFZHvb12DpWtCQ3wWcrACFxVHu/VoXQxSUviiZtEpWZuG+SeWwCDCbzfesjAf2e/W8JvN0lFrbxWTHDtXTMeArT6qNymDULzYr8S0Cj6wAlNYd5KYfs9r1OWrjLihrR4U8mkB73zBFD2HJuCdq1+Gwrf7UDZ3+qeCxzt26SopsdBaLq0d6DInRzF7HZ05FbcXtHbfxldveqjtZtjUbI4eiShF4m+YyDMsQ3g1tMlmI7GMshgmOEhbqFBORuesYQSQ32QaZNMbzizBAFOsgn2KqVFs6PUce8dLIT/0sHNxtKowEFsawth5SGRc2KRjgb9HMU+eItrHfo1jea39859KiTEOWCXDRgUCyibQzaIEPz+OoRj2PanCR1ViNW8B+/IQulROTJxGI1EUCSR4g5OYGd9ngliP2X0+olvz5BBd5uR16u9wVIu6wwEpc1MU6nno9Fuhz73YQDKtZap9jm8HKntWg0LSbPn5wLqVnL92Lk= Meiram_Chuzhenbayev@EPKZALMW0364"
}
resource "aws_instance" "public" {
  count                       = var.public_quantity
  ami                         = var.ami_id
  instance_type               = var.ec2_type
  subnet_id                   = var.public_subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.public_security_group_id]
  key_name                    = var.key_pair_name
}
resource "aws_instance" "private" {
  count         = var.private_quantity
  ami           = var.ami_id
  instance_type = var.ec2_type
  subnet_id     = var.private_subnet_id
  key_name      = var.key_pair_name
}
