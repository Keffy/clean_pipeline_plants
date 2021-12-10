#!/bin/bash
#
#SBATCH --job-name=salmon_quants
#SBATCH --output=salmon_quants.out
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-40core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu

mapfile -t srr_vals_cut < /gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/SRR_values_cleaned.csv


for line in "${srr_vals_cut[@]}"; do
    srr=$(echo $line | cut -d "," -f1)
    species=$(echo $line | cut -d "," -f29)
    SE_PE=$(echo $line | cut -d "," -f16)
    species_us=$(echo $species | sed 's/ /_/g')

    echo ${species}
    echo ${srr}

    if [[ ! -d /gpfs/scratch/krkehrli/salmon_quants ]]; then
    mkdir /gpfs/scratch/krkehrli/salmon_quants
    fi

    if [[ ! -d /gpfs/scratch/krkehrli/salmon_quants/${species_us} ]]
        mkdir /gpfs/scratch/krkehrli/salmon_quants/${species_us}
    fi

    # running each sample separately
    if [ ${SE_PE} = "SINGLE" ]; #salmon all single
        salmon quant -i /gpfs/projects/RestGroup/keffy/plant_data_files/salmon_indices/${species_us}_salmon_index -p 40 -l A -r /gpfs/scratch/krkehrli/trimmed_fastq/${species_us}/SINGLE/${srr}.fastq --validateMappings -o /gpfs/scratch/krkehrli/salmon_quants/${species_us}/${srr}_transcripts_quant
    else #salmon all paired
        salmon quant -i /gpfs/projects/RestGroup/keffy/plant_data_files/salmon_indices/${species_us}_salmon_index -p 40 -l A -1 /gpfs/scratch/krkehrli/trimmed_fastq/${species_us}/PAIRED/${srr}_1.fastq -2 /gpfs/scratch/krkehrli/trimmed_fastq/${species_us}/PAIRED/${srr}_2.fastq --validateMappings -o /gpfs/scratch/krkehrli/salmon_quants/${species_us}/${srr}_transcripts_quant
    fi
done

