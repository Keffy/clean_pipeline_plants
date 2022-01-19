#!/bin/bash

mapfile -t species < meta/species.txt

for sp in "${species[@]}"; do
    sed -i.bak ' 1 s/^/protein, rna\n/' database/no_sp/${sp}_rna_lookup.csv
done

for sp in "${species[@]}"; do
    sed -i.bak ' 1 s/^/protein, rna\n/' database/w_sp/${sp}_rna_lookup_sp.csv
done

sed -i.bak ' 1 s/^/orthogroup, protein\n/' database/orthogroups_protein.csv
sed -i.bak ' 1 s/^/orthogroup, protein\n/' database/orthogroups_protein_nosp.csv

for sp in "${species[@]}"; do
    mv database/no_sp/${sp}_rna_lookup.csv.bak database/no_sp/${sp}_rna_lookup.csv
    mv database/w_sp/${sp}_rna_lookup_sp.csv.bak databse/w_sp/${sp}_rna_lookup_sp.csv
done

mv database/orthogroups_protein.csv.bak database/orthogroups_protein.csv
mv database/orthogroups_protein_nosp.csv.bak database/orthogroups_protein_nosp.csv