#!/bin/bash

### pull all the SRX numbers and write to one big csv for downstream use

# Read in all SRX numbers, search all and write results to csv file.

mapfile -t SRX_nums < meta/all_SRX_numbers.txt

for srx in "${SRX_nums[@]}"; do
    echo "${srx}"
    esearch -db sra -query "${srx}" | efetch -format runinfo | tail -n +2 >> meta/SRR_values.csv
    sleep 0.2
done