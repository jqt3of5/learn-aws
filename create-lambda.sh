#aws s3 mb s3://estimation.learning.us-west-2
#aws s3 cp teaching_lambda.rb s3://estimation.learning.us-west-2/teaching_lambda.rb

zip -r function.zip function/
aws lambda create-function --function-name estimation-learning-test --runtime ruby2.5 --role arn:aws:iam::055756163541:role/TeachingLambda --handler teaching_lambda.lambda_handler --zip-file fileb://function.zip

