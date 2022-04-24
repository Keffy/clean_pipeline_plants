#!/bin/bash

# Run FastQC on the SRR numbers that I just downloaded.

mkdir results/fastqc

mapfile -t srr_vals_cut < ../meta/SRR_values_cleaned.csv

for line in "${srr_vals_cut[@]}"; do
  srr=$(echo $line | cut -d "," -f1)
  species=$(echo $line | cut -d "," -f28)
  SE_PE=$(echo $line | cut -d "," -f15)
  species_us=$(echo $species | sed 's/ /_/g')
  echo ${species}
  echo ${srr}
  if [[ ${SE_PE} -eq "SINGLE" ]]; then
    fastqc -t 24 -f fastq --outdir ../results/fastqc --noextract --dir ../../scratch/fastqc_temp ../../plant_data_files/untrimmed_fastq/${species_us}/${SE_PE}/${srr}_1.fastq.gz
  else
    fastqc -t 24 -f fastq --outdir ../results/fastqc --noextract --dir ../../scratch/fastqc_temp ../../plant_data_files/untrimmed_fastq/${species_us}/${SE_PE}/${srr}_1.fastq.gz
    fastqc -t 24 -f fastq --outdir ../results/fastqc --noextract --dir ../../scratch/fastqc_temp ../../plant_data_files/untrimmed_fastq/${species_us}/${SE_PE}/${srr}_2.fastq.gz
  fi
done
