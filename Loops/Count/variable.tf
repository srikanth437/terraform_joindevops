variable "instance_name" {
    type = list(string)
    default = [ "mangodb", "catalouge", "cart", "shipping", "radis", "mysql", "rabbitmq", "payment", "frontend"]
}

variable "zone_id" {
    default = "Z0582280RDE8FEYKJV2"  #if we add hosted name to aws then we will have zone_id 
}

variable "zone_name" {
    default = "srikanth.digital"  #Name has to be purchased from any vendours like goddady 
}

variable "fruits" {
    type = list(string)
    default = ["apple", "banana", "apple", "mango"]
}

variable "Set_fruits" {
    type = set(string)
    default = ["apple", "banana", "apple", "mango"]
}