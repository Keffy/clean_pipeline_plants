#!/bin/bash

# Run FastQC on the SRR numbers that I just downloaded.

# Moved all fastq files into ./scratch/fastq_files

fastqc -t 8 ../scratch/fastq_files/*.fastq 