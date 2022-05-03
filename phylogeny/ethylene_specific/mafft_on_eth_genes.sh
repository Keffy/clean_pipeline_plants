#!/bin/bash

module load mafft/7.490

### run mafft on the ethylene specific genes

outdir="mafft"
seqdir="../../../plant_data_files/ethylene_og_sequences/"

ogs=(OG0001017
OG0001516
OG0001823
OG0001838
OG0002376
OG0002845
OG0003596
OG0003776
OG0003879
OG0005313
OG0006977
OG0011700
OG0012495
OG0018870
OG0019583)

for og in "${ogs[@]}"; do
	mafft --reorder --thread 24 ${seqdir}${og}_final_seqs_for_alignment.fa > ${outdir}/${og}_clean_align.out
done
