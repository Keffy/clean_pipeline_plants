#!/bin/bash

file="/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/Sp_Orthogroups.txt"
refseqs=(NP_179546.2
NP_176808.3
NP_181262.1
NP_188956.1
NP_974218.1
NP_171927.1
NP_850760.1
NP_195948.1
NP_188713.1
NP_180273.1
NP_001318615.1
NP_001030839.5
NP_192177.1
NP_200663.2
NP_179549.1
NP_191710.1
NP_171655.1
NP_179866.1
NP_201381.1
NP_192867.1
NP_194350.1
NP_195491.1
NP_190539.1
NP_564804.1
NP_567330.1
NP_199982.2)

echo $file

for i in "${refseqs[@]}"; do
echo $i
grep $i $file | cut -d ":" -f 1
grep $i $file | wc -w
grep $i $file >> ogs_for_eth_full.txt
done
