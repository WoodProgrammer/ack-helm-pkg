package main

required_settings{
    input.spec.memorySize
    input.spec.timeout
    input.spec.runtime
    input.spec.role

}
deny[msg] {
  input.kind == "Function"
  not required_settings

  msg := "Check lambda function runtime, timeout, memorySize and IAM role values existing or not"
   
}
