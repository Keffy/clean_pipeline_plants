#!/bin/bash

# fix the SRR_values.csv 

# sed '/^[[:space:]]*$/d' meta/SRR_values.csv > meta/SRR_values_cleaned.csv
# sed -i 's/ subsp. lyrata//g' meta/SRR_values_cleaned.csv
# sed -i 's/ var. cantalupo//g' meta/SRR_values_cleaned.csv
# sed -i 's/ var. glabriusculum//g' meta/SRR_values_cleaned.csv
# sed -i 's/ subsp. pekinensis//g' meta/SRR_values_cleaned.csv
# sed -i 's/ var. italica//g' meta/SRR_values_cleaned.csv
# sed -i 's/ var. capitata//g' meta/SRR_values_cleaned.csv

# Run parallel-fastq-dump to get all the SRR files and place them 
# in directories by species and SE or PE.

mapfile -t srr_vals_cut < ../meta/SRR_values_cleaned.csv

for line in "${srr_vals_cut[@]}"; do
    srr=$(echo $line | cut -d "," -f1)
    species=$(echo $line | cut -d "," -f28)
    SE_PE=$(echo $line | cut -d "," -f15)
    species_us=$(echo $species | sed 's/ /_/g')
    echo $srr
    if [[ ! -d ../../scratch/untrimmed_fastq/${species_us} ]]; then
        mkdir ../../scratch/untrimmed_fastq/${species_us}
        mkdir ../../scratch/untrimmed_fastq/${species_us}/PAIRED
        mkdir ../../scratch/untrimmed_fastq/${species_us}/SINGLE
    fi
    parallel-fastq-dump --gzip --split-files -s ${srr} -t 24 --tmpdir ../../scratch/fqdump_temp -O ../../scratch/untrimmed_fastq/${species_us}/${SE_PE}
done
    
    
