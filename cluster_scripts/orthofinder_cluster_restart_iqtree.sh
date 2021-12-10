#!/bin/bash
#
#SBATCH --job-name=orthofinder_new_species_tree
#SBATCH --output=orthofinder_new_species_tree2.out
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-40core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu

module load shared
module load orthofinder/2.4.0


orthofinder -t 24 -S diamond -M msa -A mafft -T iqtree -fg /gpfs/projects/RestGroup/keffy/scratch/orthofinder_best_tree_plants/Results_Dec02/ -s /gpfs/projects/RestGroup/keffy/clean_pipeline_plants/phylogeny/species_tree_rooted.nwk
