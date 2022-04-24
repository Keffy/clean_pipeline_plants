#!/bin/bash

###################################################
## Run Fastp to trim these reads.                ##
###################################################

# Need to distinguish between single and paired end data.

mapfile -t srr_vals_cut < /gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/SRR_values_cleaned.csv

for line in "${srr_vals_cut[@]}"; do
    srr=$(echo $line | cut -d "," -f1)
    species=$(echo $line | cut -d "," -f28)
    SE_PE=$(echo $line | cut -d "," -f15)
    species_us=$(echo $species | sed 's/ /_/g')
    echo ${species}
    echo ${srr}

    if [[ ! -d ../../plant_data_files/trimmed_fastq/${species_us} ]]; then
        mkdir ../../plant_data_files/trimmed_fastq/${species_us}
        mkdir ../../plant_data_files/trimmed_fastq/${species_us}/SINGLE
        mkdir ../../plant_data_files/trimmed_fastq/${species_us}/PAIRED
    fi

    echo $srr
    if [ ${SE_PE} = "SINGLE" ]; then
        fastp -i ../../plant_data_files/untrimmed_fastq/${species_us}/SINGLE/${srr}_1.fastq.gz -o ../../plant_data_files/trimmed_fastq/${species_us}/SINGLE/${srr}.fastq.gz --cut_front --cut_tail --thread 8
    else
        fastp -i ../../plant_data_files/untrimmed_fastq/${species_us}/PAIRED/${srr}_1.fastq.gz -I ../../plant_data_files/untrimmed_fastq/${species_us}/PAIRED/${srr}_2.fastq.gz -o ../../plant_data_files/trimmed_fastq/${species_us}/PAIRED/${srr}_1.fastq.gz -O ../../plant_data_files/trimmed_fastq/${species_us}/PAIRED/${srr}_2.fastq.gz --detect_adapter_for_pe --cut_front --cut_tail --thread 8
    fi
done
