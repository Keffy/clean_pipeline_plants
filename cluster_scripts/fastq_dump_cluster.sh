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

