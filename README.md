# AWS ACK and Config Rules

This repository contains the AWS Config rules definition with OpenPolicyAgent style.These rules are developed with repo language.

If you want to use AWS ACK, you can check your manifests with <a href="https://github.com/open-policy-agent/conftest">conftest</a> like that;

# Examples

| Resource      | Status |
| ----------- | ----------- |
| s3      | Supported       |
| lambda   | Supported        |
| ECR   | Supported        |
| EKS   | Supported        |


## Lambda
```sh
$ conftest test --policy ./policy/lambda manifests/lambda.yaml
FAIL - manifests/lambda.yaml - main - Check lambda function runtime, timeout, memorySize and IAM role values existing or not

FAIL - manifests/lambda.yaml - main - Lamda function should use the artifact in S3 buckets

4 tests, 2 passed, 0 warnings, 2 failures, 0 exceptions

```

## S3

```sh
conftest test --policy ./policy/s3 manifests/bucket.yaml
FAIL - manifests/bucket.yaml - main - You have to enable tags
FAIL - manifests/bucket.yaml - main - You have to enable versioning

4 tests, 2 passed, 0 warnings, 2 failures, 0 exceptions
```