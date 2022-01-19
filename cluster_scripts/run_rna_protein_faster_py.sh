#!/bin/bash
#
#SBATCH --job-name=rnavals
#SBATCH --output=get_rna.txt
#SBATCH --ntasks-per-node=28
#SBATCH --nodes=1
#SBATCH --time=48:00:00
#SBATCH -p extended-28core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu

module load shared
module load python/3.9.7

cd /gpfs/projects/RestGroup/keffy/clean_pipeline_plants/cluster_scripts/

python rna_protein_faster.py
