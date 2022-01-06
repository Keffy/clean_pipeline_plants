#!/bin/bash

gff_dir="/gpfs/projects/RestGroup/keffyscratch/gffs/"
meta_dir="/gpfs/projects/RestGroup/clean_pipeline_plants/meta/"
orthofinder_dir=""

mv 

cat ${gff_dir}*.gff > ${gff_dir}giant.gff

mapfile -t ogs < OGs_all_sp.txt

## for each orthogroup

for OG in "${ogs[@]}"; do

done