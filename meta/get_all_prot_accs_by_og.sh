#!/bin/bash

find ../scratch/og_seqs_allsp/*.fa >> meta/all_OGs.txt

sed -i 's|../scratch/og_seqs_allsp/||g' meta/all_OGs.txt
sed -i 's|.fa||g' meta/all_OGs.txt

mapfile -t ogs < meta/all_OGs.txt

# get protein accs by OG

for og in "${ogs[@]}"; do
    grep ">" ../scratch/og_seqs_allsp/${og}.fa > meta/prot_accs_by_og/${og}_prot_accs.txt
    sed -i 's|">"||g' meta/prot_accs_by_og/${og}_prot_accs.txt
done

# get CDS accs by OG

mkdir ../

# check CDS and Prot seqs for identity

