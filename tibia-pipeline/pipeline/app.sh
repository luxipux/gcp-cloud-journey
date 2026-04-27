#!/bin/bash
#!/bin/bash

TIMESTAMP=$(date "+%Y-%m-%d_%H-%M-%S")
PLAYERS=$(curl -s https://api.tibiadata.com/v4/world/Sonira | jq '.world.players_online')

FILENAME="players_${TIMESTAMP}.txt"

echo "players_online=$PLAYERS timestamp=$TIMESTAMP" > $FILENAME

# upload do GCS
gcloud storage cp $FILENAME gs://logro-cloud-bucket-12345/

echo "uploaded $FILENAME"
