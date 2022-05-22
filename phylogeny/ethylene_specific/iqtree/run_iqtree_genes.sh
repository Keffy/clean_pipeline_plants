#!/bin/bash

## iqtree on the eth specific genes

module load iq-tree/2.0.6

outdir="iqtree"
alndir="mafft"

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
	iqtree2 -s ${alndir}/${og}_clean_align.out -T 24 -B 10000 -m MFP 
done