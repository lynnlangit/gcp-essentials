# Jobs / Cloud Talent Search
# Cloud Talent Solution provides the capability to create, read, update, & delete job postings,
#   as well as search jobs based on keywords and filters.

#!/usr/bin/env python
# from - https://cloud.google.com/talent-solution/job-search/v2/docs/quickstart-searching

def basic_keyword_search(client_service, company_name, keyword):
    request_metadata = {
        'user_id': 'HashedUserId',
        'session_id': 'HashedSessionId',
        'domain': 'www.google.com'
    }
    job_query = {'query': keyword}
    if company_name is not None:
        job_query.update({'company_names': [company_name]})
    request = {
        'mode': 'JOB_SEARCH',
        'request_metadata': request_metadata,
        'query': job_query,
    }

    response = client_service.jobs().search(body=request).execute()
    print(response)

def histogram_search(client_service, company_name):
    request_metadata = {
        'user_id': 'HashedUserId',
        'session_id': 'HashedSessionId',
        'domain': 'www.google.com'
    }
    custom_attribute_histogram_facet = {
        'key': 'someFieldName1',
        'string_value_histogram': True
    }
    histogram_facets = {
        'simple_histogram_facets': ['COMPANY_ID'],
        'custom_attribute_histogram_facets': [custom_attribute_histogram_facet]
    }
    request = {
        'mode': 'JOB_SEARCH',
        'request_metadata': request_metadata,
        'histogram_facets': histogram_facets
    }
    if company_name is not None:
        request.update({'query': {'company_names': [company_name]}})
    response = client_service.jobs().search(body=request).execute()
    print(response)

def job_title_auto_complete(client_service, query, company_name):
    complete = client_service.v2().complete(
        query=query, languageCode='en-US', type='JOB_TITLE', pageSize=10)
    if company_name is not None:
        complete.companyName = company_name

    results = complete.execute()
    print(results)

# for more go to - https://cloud.google.com/talent-solution/job-search/docs/before-you-begin
# also (beta) is - https://cloud.google.com/talent-solution/profile-search/