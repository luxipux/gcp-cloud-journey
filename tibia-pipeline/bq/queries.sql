-- latest data
SELECT *
FROM tibia_dataset.players_final
ORDER BY ts DESC
LIMIT 10;

-- peak hours
SELECT
  EXTRACT(HOUR FROM ts) as hour,
  ROUND(AVG(players),1) as avg_players
FROM tibia_dataset.players_final
GROUP BY hour
ORDER BY avg_players DESC;

-- trend
SELECT
  ts,
  players
FROM tibia_dataset.players_final
ORDER BY ts;
