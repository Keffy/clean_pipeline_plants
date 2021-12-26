#!/bin/bash

tar -xzvf /gpfs/projects/RestGroup/keffy/scratch/protein.tar.gz

cd /gpfs/projects/RestGroup/keffy/scratch/protein

mkdir ../protein_spnames

cp * ../protein_spnames

cd ../protein_spnames

mapfile -t species < /gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/species.txt

for sp in "${species[@]}"; do
    sed -i "s|>|>${sp}_|g" ${sp}.faa
done

