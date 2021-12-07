#!/bin/bash

########
## Use SalmonTools script to make decoys file 
## out of the transcript files downloaded from NCBI for all of the species.
## Instructions for use of the SalmonTools script are here:
## https://github.com/COMBINE-lab/SalmonTools

mapfile -t species < meta/species.txt

for sp in "${species[@]}"; do
    bash RNA_seq/generateDecoyTranscriptome.sh -g ../re_download_ncbi/${species}_genomic.fna -t ../re_download_ncbi/${species}_transcript.fna -a ../re_download_ncbi/${species}_genomic.gff
done