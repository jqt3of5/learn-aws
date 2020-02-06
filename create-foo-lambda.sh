aws lambda create-function --function-name estimation-learning-test --runtime ruby2.5 --role arn:aws:iam::055756163541:role/TeachingLambda --handler foo.lambda_handler --zip-file fileb://foo.zip
