#!/bin/bash

gff_dir="/gpfs/projects/RestGroup/keffy/scratch/gffs/"
meta_dir="/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/"
orthofinder_dir="/gpfs/projects/RestGroup/keffy/scratch/orthofinder_fasttree_2/Results_Dec25/"
db_dir="/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/database/"

#cat ${gff_dir}*.gff > ${gff_dir}giant.gff

mapfile -t ogs < ${meta_dir}OGs_all_sp.txt

mapfile -t species < ${meta_dir}species.txt


for (( i=${#ogs[@]}-1; i>=0; i--)); do
    rev[${#rev[@]}]=${ogs[i]}
done


cp ${orthofinder_dir}Orthogroups/Orthogroups.txt ${meta_dir}Sp_Orthogroups.txt
#cp ${orthofinder_dir}Orthogroups/Orthogroups.tsv ${meta_dir}Orthogroups.tsv

## Remove sp names from the Orthogroups.tsv file

# for sp in "${species[@]}"; do
#     sed -i "s|${sp}_||g" ${meta_dir}Orthogroups.txt
# done

## keep sp names

sed -i "s/_X/-X/g" ${meta_dir}Sp_Orthogroups.txt
sed -i "s/_N/-N/g" ${meta_dir}Sp_Orthogroups.txt
sed -i "s/_Y/-Y/g" ${meta_dir}Sp_Orthogroups.txt

## Look up the RNA for all Proteins by Orthogroup, write to file.

for og in "${rev[@]}"; do
    proteins=($(grep ${og} ${meta_dir}Sp_Orthogroups.txt | awk -F ":" '{print $2}'))
    echo ${og}
    for acc in "${proteins[@]}"; do
        echo ${acc}
        sp=$(echo ${acc} | awk -F "-" '{print $1}')
        gff_file=${gff_dir}${sp}_genomic.gff
        prot=$(echo ${acc} | awk -F "-" '{print $2}')
        rna=$(grep cds-${prot} ${gff_file} | grep -Eo "Parent=rna-[A-Z][A-Z]_[0-9]+.[0-9]" | head -n 1 | awk -F "-" '{print $2}')
        echo "${prot}, ${rna}" >> ${db_dir}${sp}_rna_lookup.csv
    done
done

mkdir ${db_dir}w_sp

## With species names

for og in "${rev[@]}"; do
    proteins=($(grep ${og} ${meta_dir}Sp_Orthogroups.txt | awk -F ":" '{print $2}'))
    echo ${og}
    for acc in "${proteins[@]}"; do
        sp=$(echo ${acc} | awk -F "-" '{print $1}')
        gff_file=${gff_dir}${sp}_genomic.gff
        prot=$(echo ${acc} | awk -F "-" '{print $2}')
        rna=$(grep cds-${prot} ${gff_file} | grep -Eo "Parent=rna-[A-Z][A-Z]_[0-9]+.[0-9]" | head -n 1 | awk -F "-" '{print $2}')
        echo "${acc}, ${sp}-${rna}" >> ${db_dir}w_sp/${sp}_rna_lookup_sp.csv
    done
done
# OG0031731