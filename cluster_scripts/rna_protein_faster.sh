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

### REWROTE THIS IN PYTHON


# module load shared

# gff_dir="/gpfs/projects/RestGroup/keffy/scratch/gffs/"
# meta_dir="/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/"
# orthofinder_dir="/gpfs/projects/RestGroup/keffy/scratch/orthofinder_fasttree_2/Results_Dec25/"
# db_dir="/gpfs/projects/RestGroup/keffy/scratch/rna_prot_lookup/"

# mapfile -t ogs < ${meta_dir}OGs_all_sp.txt

# for (( i=${#ogs[@]}-1; i>=0; i--)); do
#     rev[${#rev[@]}]=${ogs[i]}
# done

# for og in "${rev[@]}"; do
#     grep ${og} ${meta_dir}Sp_Orthogroups.txt | awk -F ":" '{print $2}' >> no_
# done

# for og in "${rev[@]}"; do
#     proteins=($(grep ${og} ${meta_dir}Sp_Orthogroups.txt | awk -F ":" '{print $2}'))
#     echo ${og}
#     for acc in "${proteins[@]}"; do
#         sp=$(echo ${acc} | awk -F "-" '{print $1}')
#         gff_file=${gff_dir}${sp}_genomic.gff
#         prot=$(echo ${acc} | awk -F "-" '{print $2}')
#         rna=$(grep cds-${prot} ${gff_file} | grep -Eo "Parent=rna-[A-Z][A-Z]_[0-9]+.[0-9]" | head -n 1 | awk -F "-" '{print $2}')
#         echo "${acc}, ${sp}-${rna}" >> ${db_dir}w_sp/${sp}_rna_lookup_sp.csv 
#     done
# done
