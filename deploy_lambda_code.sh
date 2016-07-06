
rm lambda_function.zip
zip -9 lambda_function.zip lambda_function.py
# Zip any other required packages
zip -r9 lambda_function.zip pandas
zip -r9 lambda_function.zip numpy
zip -r9 lambda_function.zip pytz
zip -r9 lambda_function.zip numpy-1.11.1.dist-info
zip -r9 lambda_function.zip pandas-0.18.1.egg-info
# Since the function code zip file exceeds 10 MB you have no option but to upload to S3 as mandated by AWS lambda
echo "##  Copying function code to S3  ##"
aws s3 cp  lambda_function.zip s3://my-code/lambda_packages/
echo "##  DONE Copying to S3  ##"
echo "########################"
echo "##  Updating Function Code  ##"
aws lambda update-function-code --function-name "test_pandas" --s3-bucket "my-code" --s3-key "lambda_packages/lambda_function.zip"
echo "##  DONE Updating  ##"
echo "########################"
rm -rf pandas # Remove temporary copies
# Remove the zip
rm lambda_function.zip
