package main

deny[msg] {
  input.kind == "Function"
  input.spec.runtime == "python2.7"

  msg := "This python version is not supported by AWS"
}