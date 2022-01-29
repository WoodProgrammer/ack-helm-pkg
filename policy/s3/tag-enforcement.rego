package main

tags {
    input.spec.tagging.tagSet
}

deny[msg] {
  input.kind == "Bucket"
  not tags

  msg := "You have to enable tags"
}