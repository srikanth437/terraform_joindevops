variable "ami_id" {
  default     = "ami-0220d79f3f480ecf5"
  description = "converting the ami_id into the variable"
}

variable "instance_type" {
  default     = "t3.micro"
  description = "converting the default instance type of the env is t3.micro by using the variable"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    name         = "terraform"
    project      = "roboshop"
    terraform    = "true"
    environtment = "dev"
  }
}

variable "sg_name" {
  default = "allow-all-terraform"
  type    = string

}

variable "sg_description" {
  default = "Allow TLS inbound traffic and all outbound traffic"
  type    = string

}

variable "from_port" {
  default = "0"


}

variable "to_port" {
  default = "0"


}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
  type    = list(any)

}

variable "sg_tags" {
  type = map(string)
  default = {
    Name         = "allow_all"
    project      = "roboshop"
    terraform    = "true"
    environtment = "dev"
  }
}
