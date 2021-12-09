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



###################################################
## Run Fastp to trim these reads.                ##
###################################################

# Distinguished between PE/SE data.

module load shared
module load rna_seq/1.0


mapfile -t srr_vals_cut < /gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/SRR_values_cleaned.csv

for line in "${srr_vals_cut[@]}"; do
    srr=$(echo $line | cut -d "," -f1)
    species=$(echo $line | cut -d "," -f29)
    SE_PE=$(echo $line | cut -d "," -f16)
    species_us=$(echo $species | sed 's/ /_/g')

    if [[ ! -d /gpfs/scratch/krkehrli/trimmed_fastq/${species_us} ]]; then
        mkdir /gpfs/scratch/krkehrli/trimmed_fastq/${species_us}
        mkdir /gpfs/scratch/krkehrli/trimmed_fastq/${species_us}/SINGLE
        mkdir /gpfs/scratch/krkehrli/trimmed_fastq/${species_us}/PAIRED
    fi

    echo $srr
    if [ ${SE_PE} = "SINGLE" ]; then
        fastp -i /gpfs/scratch/krkehrli/fastq_untrimmed/${species_us}/SINGLE/${srr}.fastq -o /gpfs/scratch/krkehrli/trimmed_fastq/${species_us}/SINGLE/${srr}.fastq --cut_front --cut_tail
    else
        fastp -i /gpfs/scratch/krkehrli/fastq_untrimmed/${species_us}/PAIRED/${srr}_1.fastq -I /gpfs/scratch/krkehrli/fastq_untrimmed/${species_us}/PAIRED/${srr}_2.fastq -o /gpfs/scratch/krkehrli/trimmed_fastq/${species_us}/PAIRED/${srr}_1.fastq -O /gpfs/scratch/krkehrli/trimmed_fastq/${species_us}/PAIRED/${srr}_2.fastq --detect_adapter_for_pe --cut_front --cut_tail
    fi
done
