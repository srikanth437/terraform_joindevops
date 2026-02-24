resource "aws_instance" "example" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow-all-terraform.id]
  tags = {
    Name    = "terraform"
    project = "roboshop"
  }
}

resource "aws_security_group" "allow-all-terraform" {
  name        = "allow-all-terraform"
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  dynamic "ingress" { 
    for_each = var.ingress_rules
    content {
      from_port   = ingress.value.port          #Here ingress is special variable after defining the dyanmic infront of it
      to_port     = ingress.value.port          #Here ingress is special variable after defining the dyanmic infront of it
      protocol    = "tcp"                       #Here ingress is special variable after defining the dyanmic infront of it
      cidr_blocks = ingress.value.cidr_blocks   #Here ingress is special variable after defining the dyanmic infront of it
      description = ingress.value.description   #Here ingress is special variable after defining the dyanmic infront of it
    }
  }
                  
    
  tags = {
    Name = "allow_all"
  }
}

