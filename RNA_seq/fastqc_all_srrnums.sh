#!/bin/bash

# Run FastQC on the SRR numbers that I just downloaded.

# Moved all fastq files into ./scratch/fastq_files

fastqc -t 8 -f fastq --outdir ../plant_data_files/fastqc --noextract -dir ../scratch/fastqc_temp ../scratch/fastq_files/*.fastq 