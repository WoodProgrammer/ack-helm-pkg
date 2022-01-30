package main

deny[msg] {
  input.kind == "Repository"
  not input.spec.imageTagMutability == true

  msg := "Please check whether imagetag mutability enabled."
}