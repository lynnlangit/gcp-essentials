import os

from google.oauth2 import service_account
import googleapiclient.discovery

#line 8 const fails to init
credentials = service_account.Credentials.from_service_account_file(
    filename=os.environ['GOOGLE_APPLICATION_CREDENTIALS'],
    scopes=['https://www.googleapis.com/auth/cloud-platform'])

service = googleapiclient.discovery.build(
    'iam', 'v1', credentials=credentials)

response = service.roles().list().execute()
roles = response['roles']

for role in roles:
    print('Title: ' + role['title'])
    print('Name: ' + role['name'])
    print('Description: ' + role['description'])
    print('')
