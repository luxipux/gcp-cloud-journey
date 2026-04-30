# BigQuery

This folder contains BigQuery setup and example queries.

## Tables

- players (raw data, string timestamp)
- players_final (clean data, TIMESTAMP)

## Usage

Create dataset:
bq mk tibia_dataset

Create tables:
bq query < create_table.sql
bq query < create_final_table.sql

Run queries:
bq query "<SQL>"
