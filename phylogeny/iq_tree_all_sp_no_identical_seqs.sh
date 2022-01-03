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
module load anaconda/3
source activate t_coffee

mafft_dir="/gpfs/projects/RestGroup/keffy/scratch/mafft_alignments/"
output_dir="/gpfs/projects/RestGroup/keffy/scratch/iq_tree_trim_noid/"
meta_dir="/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/"
summary_dir="/gpfs/projects/RestGroup/keffy/scratch/trim_summaries_noid/"

mapfile -t Orthogroups < ${meta_dir}OGs_all_sp.txt

for (( i=${#Orthogroups[@]}-1; i>=0; i--)); do
    rev[${#rev[@]}]=${Orthogroups[i]}
done

## trimming alignment to remove based on the heuristic automated1 method.

for OG in "${rev[@]}"; do
    echo ${OG}
    trimal -in ${mafft_dir}${OG}_aln.fa -out ${mafft_dir}${OG}_aln_trim_auto.fa -fasta -htmlout ${summary_dir}${OG}_trimal_summary.html -automated1
done

for OG in "${rev[@]}"; do
    echo ${OG}
    sed "s/ /_/g" ${mafft_dir}${OG}_aln_trim_auto.fa > ${mafft_dir}${OG}_aln_us_trim_auto.fa
    iqtree2 -s ${mafft_dir}${OG}_aln_us_trim_auto.fa -m MFP -T AUTO -ntmax 40 -pre ${output_dir}${OG}_iqtree --redo
done