#!/bin/bash

##########
## Make the salmon indices for all 32 species.
##########

mapfile -t species < meta/species.txt

## to prepare the transcriptome indices for 
## mapping-based mode.
if [[ ! -d ../plant_data_files/salmon_indices ]]; then
    mkdir ../plant_data_files/salmon_indices
fi



for sp in "${species[@]}"; do
    if [[ ! -d ../plant_data_files/salmon_indices/${sp} ]]; then
        mkdir ../plant_data_files/salmon_indices/${sp}
    fi
    echo "${sp}"
    grep "^>" < ../re_download_ncbi/${sp}_genomic.fna.gz | cut -d " " -f 1 > ../plant_data_files/salmon_indices/${sp}/${sp}_decoys.txt
    sed -i.bak -e 's/>//g' ../plant_data_files/salmon_indices/${sp}/${sp}_decoys.txt
    cat ../re_download_ncbi/${sp}_transcript.fna.gz ../re_download_ncbi/${sp}_genomic.fna.gz > ../plant_data_files/salmon_indices/${sp}/${sp}_gentrome.fasta.gz

done

for sp in "${species[@]}"; do
    salmon index -t ../plant_data_files/salmon_indices/${sp}/${sp}_gentrome.fasta --decoys ../plant_data_files/salmon_indices/${sp}/${sp}_decoys.txt -p 8 -i ${sp}_salmon_index -k 31
done