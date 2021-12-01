#!/bin/bash

### run trimmomatic

mapfile -t srr_vals_cut < meta/SRR_values_cleaned.csv

for line in "${srr_vals_cut[@]}"; do
    srr=$(echo $line | cut -d "," -f1)
    species=$(echo $line | cut -d "," -f29)
    SE_PE=$(echo $line | cut -d "," -f16)
    species_us=$(echo $species | sed 's/ /_/g')
    echo ${srr}

    if [ ${SE_PE} == "PAIRED" ]; then
        # Paired-end trimmomatic
        trimmomatic 
    else
        # Single-end trimmomatic
        trimmomatic
    fi
done

# Run FastQC on the trimmed files to compare them.

