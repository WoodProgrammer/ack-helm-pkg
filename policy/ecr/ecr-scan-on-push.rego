package main

deny[msg] {
  input.kind == "Repository"
  not input.spec.imageScanningConfiguration.scanOnPush == true

  msg := "Please check whether scan on push on repo enabled"
}