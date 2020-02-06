#aws iam create-policy --policy-name TeachingGatewayToS3 --policy-document file://teaching-lambda-s3.policy.json

aws iam create-role --role-name TeachingGateway --assume-role-policy-document file://policysAndRoles/teaching-gateway.role.json
