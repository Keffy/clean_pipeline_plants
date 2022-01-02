#!/bin/bash


## Get list of orthogroups with at least 4 genes
## And a list of orthogroups with all sp present.

og_dir=/gpfs/projects/RestGroup/keffy/scratch/orthofinder_fasttree_2/Results_Dec25/Orthogroups
meta_dir=/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta

## Run R script to restrict to 2 species and 4 genes

Rscript filter_OGs.R

## Pull Orthogroup numbers for restriction to at least 2 species and 4 genes total.

awk '{print $1}' ${meta_dir}/Orthogroup_genecount_filtered.tsv | tail -n +2 > ${meta_dir}/OGs_filter_large_list.txt

## Print to file only orthogroup numbers that have at least 1 gene from each species.

awk '!/\t0\t/ {print $1}' ${og_dir}/Orthogroups.GeneCount.tsv | tail -n +2 > ${meta_dir}/OGs_all_sp.txt

