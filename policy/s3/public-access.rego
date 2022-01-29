package main

deny[msg] {
  input.kind == "Bucket"
  not input.spec.publicAccessBlock.blockPublicACLs == true

  msg := "Bucket must block the publicACL"
}

deny[msg] {
  input.kind == "Bucket"
  not input.spec.publicAccessBlock.blockPublicPolicy == true

  msg := "Bucket must block the public bucket policies"
}
