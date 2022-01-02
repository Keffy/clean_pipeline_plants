#!/bin/bash
#
#SBATCH --job-name=iqtree_all_sp_raw
#SBATCH --output=iqtree_all_sp_raw.out
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-40core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu

module load shared
module load iq-tree/2.0.6

mafft_dir="/gpfs/projects/RestGroup/keffy/scratch/mafft_alignments/"
output_dir="/gpfs/projects/RestGroup/keffy/scratch/iq_tree/"
meta_dir="/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/"

mapfile -t Orthogroups < ${meta_dir}OGs_all_sp.txt

for OG in "${Orthogroups[@]}"; do
    sed "s/ /_/g" ${mafft_dir}${OG}_aln.fa > ${mafft_dir}${OG}_aln_us.fa
    iqtree2 -s ${mafft_dir}${OG}_aln_us.fa -m MFP -T 40
done