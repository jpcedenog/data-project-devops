import boto3
import logging

log = logging.getLogger("DataDrivenProject")

def download(bucket, key, filename, resource=None):
    if resource is None:
        resource = boto3.resource("s3")

    log.info("Downloading: %s, %s, %s", bucket, key, filename)

    resource.meta.client.download_file(bucket, key, filename)

    return filename
