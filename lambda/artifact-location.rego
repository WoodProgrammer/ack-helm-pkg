package main

deny[msg] {
  input.kind == "Function"
  not input.spec.vpcConfig

  msg := "Lamda function should be in VPC"
}