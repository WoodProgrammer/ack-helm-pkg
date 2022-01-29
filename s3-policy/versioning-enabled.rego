package main

deny[msg] {
  input.kind == "Bucket"
  not input.spec.versioning.enabled

  msg := "You have to enable versioning"
}