#!/bin/bash
#
#SBATCH --job-name=fastp_plants
#SBATCH --output=fastp_plants.out
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-40core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu



###/gpfs/projects/RestGroup/keffy/plant_data_files/re_download_ncbi
### ../plant_data_files/re_download_ncbi/


mapfile -t species < meta/species.txt

## to prepare the transcriptome indices for 
## mapping-based mode.
if [[ ! -d ../plant_data_files/salmon_indices ]]; then
    mkdir ../plant_data_files/salmon_indices
fi



for sp in "${species[@]}"; do
    # if [[ ! -d ../plant_data_files/salmon_indices/${sp} ]]; then
    #     mkdir ../plant_data_files/salmon_indices/${sp}
    # fi
    echo "${sp}"
    grep "^>" <(gunzip -c ../plant_data_files/re_download_ncbi/${sp}_genomic.fna.gz) | cut -d " " -f 1 > ../plant_data_files/salmon_indices/${sp}_decoys.txt
    sed -i.bak -e 's/>//g' ../plant_data_files/salmon_indices/${sp}_decoys.txt
    cat ../plant_data_files/re_download_ncbi/${sp}_transcript.fna.gz ../plant_data_files/re_download_ncbi/${sp}_genomic.fna.gz > ../plant_data_files/salmon_indices/${sp}_gentrome.fasta.gz

done

for sp in "${species[@]}"; do
    echo "${sp}"
    salmon index -t ../plant_data_files/salmon_indices/${sp}_gentrome.fasta.gz --decoys ../plant_data_files/salmon_indices/${sp}_decoys.txt -p 8 -i ../plant_data_files/salmon_indices/${sp}_salmon_index -k 31 
done