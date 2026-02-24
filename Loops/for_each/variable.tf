variable "instances" {
  type = map(string)
  default = {
    mongodb   = "t3.micro"
    catalogue = "t3.micro"
    mysql     = "t3.small"
    rabbitmq  = "t3.micro"
  }
}


variable "zone_id" {
    default = "Z0582280RDE8FEYKJV2"  #if we add hosted name to aws then we will have zone_id 
}

variable "zone_name" {
    default = "srikanth.digital"  #Name has to be purchased from any vendours like goddady 
}