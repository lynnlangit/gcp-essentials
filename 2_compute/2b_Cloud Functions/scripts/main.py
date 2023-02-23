import tifffile
from google.cloud import storage

def hello_tiff(event, context):
    file = event
    print(f"Processing file: {file['name']}.")
    
    # set up Google Cloud Storage client
    storage_client = storage.Client()
    
    # set up source bucket and file location
    source_bucket_name = 'gcf-v2-sources-398182364995-us-central1'
    source_blob_name = 'at3_1m4_02.tif'
    source_uri = f'gs://{source_bucket_name}/{source_blob_name}'
    
    # set up destination file path on local storage
    local_file_path = '/tmp/example.tiff'
    
    # copy file from GCS to local storage
    bucket = storage_client.bucket(source_bucket_name)
    blob = bucket.blob(source_blob_name)
    blob.download_to_filename(local_file_path)
    
    # read first line of file using tifffile library
    with tifffile.TiffFile(local_file_path) as tif:
        first_line = tif.pages[0].tags['ImageDescription'].value.split('\n')[0]
    
    print(f'First line of file {source_blob_name} is: {first_line}')

