#!/bin/bash

## Get list of orthogroups with at least 4 genes
## And a list of orthogroups with all sp present.

og_dir=/gpfs/projects/RestGroup/keffy/scratch/orthofinder_fasttree/Results_Dec08/Orthogroups
meta_dir=/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta


${meta_dir}/all_species_OGs.txt
grep -o -E OG[0-9]+ Orthogroups.tsv > ${meta_dir}/all_OGs.txt
${meta_dir}/OGs_atleast_4_2sp.txt

while IFS= read -r line; do
    if [[ ${line} != '\t'0'\t' ]]; then
        echo ${line}
    fi
done < ${og_dir}/Orthogroups.GeneCount.tsv

grep -o -E OG[0-9]+ ${line} >> ${meta_dir}/all_species_OG.txt