package main

encryption {
    input.spec.encryptionConfig
}

deny[msg] {
  input.kind == "Cluster"
  not encryption
  msg := "Please check whether EKS encryption enabled"
}