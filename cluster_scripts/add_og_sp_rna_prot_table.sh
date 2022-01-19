#!/bin/bash

module load shared

cp meta/Sp_Orthogroups.txt database/orthogroups_protein.txt
cp meta/Orthogroups.txt database/orthogroups_protein_nosp.txt

sed -i 's/: /,/g' database/orthogroups_protein.txt
sed -i 's/: /,/g' database/orthogroups_protein_nosp.txt

mv database/orthogroups_protein_nosp.txt database/orthogroups_protein_nosp.csv
mv database/orthogroups_protein.txt database/orthogroups_protein.csv

