#!/bin/bash

# Set the base URL and destination path for data
BASE_URL="https://www.star.nesdis.noaa.gov/pub/socd/mecb/crw/data/5km/v3.1_op/nc/v1.0/daily/sst"
DEST_PATH=""

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_PATH"

# Loop through the years 1985 to 2016
for YEAR in {1985..2024}; do
    echo "Downloading SST data for year: $YEAR"
    wget -r -np -nd -A "*.nc" -P "$DEST_PATH" "$BASE_URL/$YEAR/"
done
