import boto3
import os

def lambda_handler(event, context):
    s3 = boto3.client('s3')
    source_bucket = os.environ['SOURCE_BUCKET']
    dest_bucket = os.environ['DEST_BUCKET']

    for record in event['Records']:
        key = record['s3']['object']['key']
        copy_source = {'Bucket': source_bucket, 'Key': key}
        
        s3.copy_object(CopySource=copy_source, Bucket=dest_bucket, Key=key)
        
    return {
        'statusCode': 200,
        'body': 'File transferred successfully!'
    }
