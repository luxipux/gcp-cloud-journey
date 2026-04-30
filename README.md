# GCP Cloud Journey 🚀

Hands-on Google Cloud project focused on building a simple end-to-end data pipeline using serverless tools.

## 🧠 Project Overview

This project collects real-time data from an external API, processes it in a containerized pipeline, and stores it for further analysis.

Pipeline flow:

API → Cloud Run Job → GCS → BigQuery → SQL → Visualization

## ⚙️ Tech Stack

* Cloud Run (Jobs)
* Cloud Storage (GCS)
* BigQuery
* Docker
* gcloud CLI
* Bash

## 📊 What it does

* Fetches Tibia player count from public API
* Stores raw data in GCS as timestamped files
* Inserts structured data into BigQuery
* Enables querying and visualization (e.g. peak hours, trends)

## 📁 Project Structure

```
aggregate/     # data aggregation jobs
pipeline/      # main data pipeline (Docker + app.sh)
infra/         # infra setup (future Terraform)
scripts/       # helper scripts
bq/            # BigQuery setup and queries
```

## 🚀 How to run

### Build & push image

```
docker build -t tibia-pipeline .
docker tag tibia-pipeline europe-west2-docker.pkg.dev/<PROJECT_ID>/tibia-repo/tibia-pipeline:latest
docker push europe-west2-docker.pkg.dev/<PROJECT_ID>/tibia-repo/tibia-pipeline:latest
```

### Run job

```
gcloud run jobs execute tibia-job --region=europe-west2
```

### Query data

```
bq query "SELECT * FROM tibia_dataset.players_final ORDER BY ts DESC LIMIT 10"
```

## 📈 Example insights

* Peak player hours by day
* Player count trends over time

## 🧩 Next steps

* CI/CD pipeline (GitHub Actions)
* Infrastructure as Code (Terraform)
* Monitoring & alerting

---

This repository documents my hands-on journey with Google Cloud, focusing on practical, real-world use cases rather than theory.
