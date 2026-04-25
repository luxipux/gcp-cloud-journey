# Day 3 – Cloud Storage (GCS)

## What I did
- Created a Google Cloud Storage bucket
- Uploaded files using gcloud CLI
- Made objects publicly accessible
- Accessed files via browser (public URL)
- Hosted a simple HTML page without using a VM

## Commands
gcloud storage buckets create gs://logro-cloud-bucket-12345
gcloud storage cp hello.txt gs://logro-cloud-bucket-12345
gcloud storage cp index.html gs://logro-cloud-bucket-12345
gcloud storage ls gs://logro-cloud-bucket-12345

# make bucket public
gcloud storage buckets add-iam-policy-binding gs://logro-cloud-bucket-12345 \
--member="allUsers" \
--role="roles/storage.objectViewer"

## Key learnings
- Cloud Storage is independent from compute (no VM required)
- Files can be served directly from GCS over HTTP
- IAM controls access (public vs private)
- GCS is globally available and scalable
- Static content can be hosted without a server

## Issues & fixes
- UTF-8 encoding issue (emoji displayed incorrectly)
- Fixed by adding:
  <meta charset="UTF-8">

## Result
- Public file accessible via URL:
  https://storage.googleapis.com/logro-cloud-bucket-12345/hello.txt

- Simple HTML page hosted directly from GCS:
  https://storage.googleapis.com/logro-cloud-bucket-12345/index.html
