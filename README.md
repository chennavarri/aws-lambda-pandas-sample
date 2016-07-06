# aws-lambda-pandas-sample
Required packages for using pandas in AWS Lambda functions. You need to package all dependencies into your lambda function code including the dependencies that are compiled for Amazon Linux AMI.

 - Zip the pandas and dependencies packages (The zip file in the repo already consists of the required dependencies i.e. python packages for pandas. You can simply add your code to the zip file and use it in your lambda.)
 - Zip your lambda function code
 - Upload function code to S3 since the zip file will be more than 10 MB.
 - Update the lambda function to point to the correct zip file

