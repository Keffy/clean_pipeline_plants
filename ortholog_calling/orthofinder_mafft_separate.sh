#!/bin/bash
#
#SBATCH --job-name=mafft_all_sp_OGs
#SBATCH --output=orthofinder_mafft_sep.out
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-40core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu

module load shared
module load orthofinder/2.4.0

## running mafft on the orthogroups from the fasttree 
## run of orthofinder 2.4.0.

ogs_dir=/gpfs/projects/RestGroup/keffy/scratch/orthofinder_fasttree_2/Results_Dec25/Orthogroup_Sequences

out_dir=/gpfs/projects/RestGroup/keffy/scratch/mafft_alignments

meta_dir=/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta

mapfile -t Orthogroups < ${meta_dir}/OGs_filter_large_list.txt

for OG in "${Orthogroups[@]}"; do
    mafft --thread 38 --amino ${ogs_dir}/${OG}.fa > ${out_dir}/${OG}_aln.fa
done