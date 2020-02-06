aws iam create-policy --policy-name TeachingLambdaToS3 --policy-document file://policysAndRoles/teaching-lambda-s3.policy.json

aws iam create-role --role-name TeachingLambda --assume-role-policy-document file://policysAndRoles/teaching-lambda.role.json
