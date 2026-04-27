#!/bin/bash

BUCKET="logro-cloud-bucket-12345"

VALUES=$(gcloud storage cat gs://$BUCKET/players_*.txt \
  | grep players_online \
  | awk -F'[= ]' '{print $2}')

if [ -z "$VALUES" ]; then
  echo "no data"
  exit 1
fi

COUNT=$(echo "$VALUES" | wc -l)
AVG=$(echo "$VALUES" | awk '{sum+=$1} END {print sum/NR}')
MIN=$(echo "$VALUES" | sort -n | head -1)
MAX=$(echo "$VALUES" | sort -n | tail -1)

OUTPUT="result_$(date +%Y-%m-%d_%H-%M-%S).txt"

cat <<EOF > $OUTPUT
count=$COUNT
avg=$AVG
min=$MIN
max=$MAX
generated_at=$(date)
EOF

gsutil cp $OUTPUT gs://$BUCKET/

echo "uploaded $OUTPUT"
