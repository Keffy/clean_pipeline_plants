#!/bin/bash
#
#SBATCH --job-name=tcoffee1
#SBATCH --output=tcoffee_algns1.out
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-40core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu

module load anaconda/3
source activate t_coffee


ogseq_dir="../../scratch/orthofinder_fasttree_2/Results_Dec25/Orthogroup_Sequences/"
ogseq_newdir="../../scratch/og_seqs_allsp/"

mapfile -t ogs_allsp < OGs_all_sp.txt

# for og in "${ogs_allsp[@]}"; do
#     cp ${ogseq_dir}${og}.fa ${ogseq_newdir}${og}.fa
# done

for og in "${ogs_allsp[@]}"; do
    echo ${og}
    t_coffee -in ${ogseq_newdir}${og}.fa -n_core=40 -output=fasta_aln,msf
    #t-coffee -seq ${ogseq_newdir}${og}.fa -mode fmcoffee
done