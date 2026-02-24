/* output "instance_output" {
  value       = aws_instance.example
  description = "Output of the isntance in the json format"
} */

output "fruits_list" {
    value = var.fruits
}

output "set_list" {
    value = var.Set_fruits
}