variable "ingress_rules" {

  default = [
    {
      port        = 22
      cidr_blocks = ["0.0.0.0/0"]
      description = "allowing the 22 port from the internet"

    },
    {
      port        = 443
      cidr_blocks = ["0.0.0.0/0"]
      description = "allowing the 443 port from the internet"
    },
    {
      port        = 3306
      cidr_blocks = ["0.0.0.0/0"]
      description = "allowing the 443 port from the internet"

    }
  ]



}
