#!/bin/bash
#
#SBATCH --job-name=orthofinder_fasttree
#SBATCH --output=orthofinder_fasttree.out
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-40core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu

module load shared
module load orthofinder/2.4.0


orthofinder -o /gpfs/projects/RestGroup/keffy/scratch/orthofinder_fasttree -t 32 -S diamond -M msa -A mafft -f /gpfs/projects/RestGroup/keffy/scratch/protein -s /gpfs/projects/RestGroup/keffy/clean_pipeline_plants/phylogeny/species_tree_rooted.nwk
