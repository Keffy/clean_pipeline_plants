#!/bin/bash

###################################################
## Run Fastp to trim these reads.                ##
###################################################

# Need to distinguish between single and paired end data.

mapfile -t srr_vals_cut < meta/SRR_values_cleaned.csv

for line in "${srr_vals_cut[@]}"; do
    srr=$(echo $line | cut -d "," -f1)
    species=$(echo $line | cut -d "," -f29)
    SE_PE=$(echo $line | cut -d "," -f16)
    species_us=$(echo $species | sed 's/ /_/g')
    if [[ ! -d ../plant_data_files/trimmed_fastq/${species_us} ]]; then
        mkdir ../plant_data_files/trimmed_fastq/${species_us}
        mkdir ../plant_data_files/trimmed_fastq/${species_us}/SINGLE
        mkdir ../plant_data_files/trimmed_fastq/${species_us}/PAIRED
    fi

    echo $srr
    if [ ${SE_PE} = "SINGLE" ]; then
        fastp -i ../plant_data_files/untrimmed_fastq/${species_us}/SINGLE/${srr}_1.fastq -o ../plant_data_files/trimmed_fastq/${species_us}/SINGLE/${srr}_1.fastq
    else
        fastp -i ../plant_data_files/untrimmed_fastq/${species_us}/PAIRED/${srr}_1.fastq -I ../plant_data_files/untrimmed_fastq/${species_us}/PAIRED/${srr}_2.fastq -o ../plant_data_files/trimmed_fastq/${species_us}/PAIRED/${srr}_1.fastq -O ../plant_data_files/trimmed_fastq/${species_us}/PAIRED/${srr}_2.fastq
    fi
done
