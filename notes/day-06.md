# Day 6 – Data Aggregation

## Goal
Process collected data and compute statistics.

## What I built
- Script `aggregate.sh`
- Reads data directly from GCS (no local sync)
- Extracts `players_online`
- Computes:
  - average
  - max
  - min
  - count
- Saves result as timestamped file
- Uploads result back to GCS
- Uses fallback (gcloud → gsutil)

## Automation
- Cron job runs aggregation every 15 minutes

## Key learnings
- Streaming data from GCS instead of downloading
- Using awk for parsing structured text
- Building simple ETL pipeline
- Handling failures (fallback, validation)

## Example result
```count=10
avg=60.9
max=64
min=56
generated_at=...```
