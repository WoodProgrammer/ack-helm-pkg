package main

policy {
    input.spec.lifecyclePolicy
}

deny[msg] {
  input.kind == "Repository"
  not policy

  msg := "Please check whether ecr lifecycle policy enabled or not"
}