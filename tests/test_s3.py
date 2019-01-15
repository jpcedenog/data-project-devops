from moto import mock_s3
from datadrivenlibs.s3 import download
import boto3
import sys

sys.path.append("datadrivenlibs")

@mock_s3
def test_s3_download():
    bucket = 'test-bucket'
    filename = 'some-file.txt'
    key = 'some-folder/' + filename

    conn = boto3.resource('s3', region_name='us-east-1')
    conn.create_bucket(Bucket=bucket)
    conn.Bucket(bucket).put_object(Key=key, Body='Some content')

    filename_test = download(bucket=bucket, key=key, filename=filename, resource=conn)

    assert filename_test == filename