#!/bin/bash

#### Get all the platforms used for sequencing for each SRR

mapfile -t srr_vals < meta/SRR_values_cleaned.csv

for line in "${srr_vals[@]}"; do
    srr=$(echo ${line} | cut -d "," -f1)
    species=$(echo ${line} | cut -d "," -f29)
    SE_PE=$(echo ${line} | cut -d "," -f16)
    species_us=$(echo ${species} | sed 's/ /_/g')
    echo ${srr}
    platform=$(esearch -db sra -query "${srr}" | efetch | egrep -o "<INSTRUMENT_MODEL>.+</INSTRUMENT_MODEL>" | cut -d \> -f2 | cut -d \< -f1)
    sleep 0.3
    echo "${srr},${platform}" >> meta/platform_by_srrnum.txt
done