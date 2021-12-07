#!/bin/bash
#
#SBATCH --job-name=fastq_dump
#SBATCH --output=fastq_dump_plants.out
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-40core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu

module load shared
module load anaconda/3

source activate keffy_sradb


mapfile -t srr_vals_cut < /gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/SRR_values_cleaned.csv

for line in "${srr_vals_cut[@]}"; do
    srr=$(echo $line | cut -d "," -f1)
    species=$(echo $line | cut -d "," -f29)
    SE_PE=$(echo $line | cut -d "," -f16)
    species_us=$(echo $species | sed 's/ /_/g')
    echo $srr
   
    prefetch --max-size u ${srr} -O /gpfs/scratch/krkehrli/sra_dump
done

for line in "${srr_vals_cut[@]}"; do
    srr=$(echo $line | cut -d "," -f1)
    species=$(echo $line | cut -d "," -f29)
    SE_PE=$(echo $line | cut -d "," -f16)
    species_us=$(echo $species | sed 's/ /_/g')

    if [[ ! -d /gpfs/scratch/krkehrli/fastq_untrimmed/${species_us} ]]; then
        mkdir /gpfs/scratch/krkehrli/fastq_untrimmed/${species_us}
        mkdir /gpfs/scratch/krkehrli/fastq_untrimmed/${species_us}/PAIRED
        mkdir /gpfs/scratch/krkehrli/fastq_untrimmed/${species_us}/SINGLE
    fi

    fasterq-dump --outdir /gpfs/scratch/krkehrli/fastq_untrimmed/${species_us}/${SE_PE} ${srr}
done