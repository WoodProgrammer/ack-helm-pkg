package main

deny[msg] {
  input.kind == "Cluster"
  not input.spec.resourcesVPCConfig.endpointPublicAccess == false

  msg := "Please check whether EKS public access disabled"
}