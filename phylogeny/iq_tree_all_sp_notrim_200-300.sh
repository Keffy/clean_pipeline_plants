#!/bin/bash
#
#SBATCH --job-name=iqtree_200-300
#SBATCH --output=iqtree_all_sp_no_trim_200-300.out
#SBATCH --ntasks-per-node=28
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-28core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu


module load shared
module load iq-tree/2.0.6

mafft_dir="/gpfs/projects/RestGroup/keffy/scratch/mafft_alignments/"
output_dir="/gpfs/projects/RestGroup/keffy/scratch/iq_tree/"
meta_dir="/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/"


mapfile -t Orthogroups < ${meta_dir}OGs_all_sp_200-300.txt

## trimming alignment to remove regions with more gaps in more than 50% of sequences, unless we will lose more than 60% of the alignment.

for OG in "${Orthogroups[@]}"; do
    sed "s/ /_/g" ${mafft_dir}${OG}_aln.fa > ${mafft_dir}${OG}_aln_us_notrim.fa
    iqtree2 -s ${mafft_dir}${OG}_aln_us_notrim.fa -m MFP -T AUTO -ntmax 28 -pre ${output_dir}${OG}_iqtree
done
