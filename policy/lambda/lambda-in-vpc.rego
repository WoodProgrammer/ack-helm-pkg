package main

deny[msg] {
  input.kind == "Function"
  not input.code.s3Bucket

  msg := "Lamda function should use the artifact in S3 buckets"
}