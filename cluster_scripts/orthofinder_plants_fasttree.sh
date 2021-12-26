#!/bin/bash
#
#SBATCH --job-name=orthofinder_fasttree_only_seq
#SBATCH --output=orthofinder_fasttree_os.out
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-40core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu

module load shared
module load orthofinder/2.4.0


orthofinder -o /gpfs/projects/RestGroup/keffy/scratch/orthofinder_fasttree_2 -t 32 -S diamond -M msa -os -f /gpfs/projects/RestGroup/keffy/scratch/protein_spnames 