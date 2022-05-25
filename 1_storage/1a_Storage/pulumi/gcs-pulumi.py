# Pulumi Examples

# Create a GCS bucket
import pulumi
import pulumi_gcp as gcp

static_site = gcp.storage.Bucket("static-site",
    cors=[gcp.storage.BucketCorArgs(
        max_age_seconds=3600,
        methods=[
            "GET",
            "HEAD",
            "PUT",
            "POST",
            "DELETE",
        ],
        origins=["http://image-store.com"],
        response_headers=["*"],
    )],
    force_destroy=True,
    location="EU",
    uniform_bucket_level_access=True,
    website=gcp.storage.BucketWebsiteArgs(
        main_page_suffix="index.html",
        not_found_page="404.html",
    ))

# Create a GCS bucket policy
gcp.storage.BucketIamBinding("static-site-policy",
    bucket=static_site.id,
    role="roles/storage.objectViewer",
    members=["allUsers"])