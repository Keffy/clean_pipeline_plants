#!/bin/bash

#### get the expression values for all of the
#### ethylene response and ethylene biosynthesis pathways

old_exp_file="/gpfs/projects/RestGroup/keffy/all_quants_one_file_huge.txt"
new_exp_dir="/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/eth_quants_by_OG"
og_list_file="/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/ogs_for_eth_full.txt"

ogs=(OG0011700
OG0003776
OG0003879
OG0001838
OG0018870
OG0001516
OG0002845
OG0001017
OG0019583
OG0005313
OG0002899
OG0012495
OG0002376
OG0001823
OG0006977
OG0003596)

# Get list of genes per OG

for og in "${ogs[@]}"; do
	# list of genes per og
	genes=$(grep ${og} ${og_list_file} | cut -d ":" -f 2 | cut -d " " -f 2-)
	gene_array=($genes)
	for sp_gene in "${gene_array[@]}"; do
		# expression values for each gene
		gene=$(echo $sp_gene | cut -d "-" -f 2)
		# write to disk
		grep ${gene} ${old_exp_file} >> ${new_exp_dir}/${og}_exp_with_dupes.txt
	done
done
