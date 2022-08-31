#!/bin/bash

module load iq-tree/2.0.6

alndir="mafft"
calibdir="iqtree/scripts"

## only OG0019583 to test

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

for og in "${ogs[@]}"
do
	iqtree2 -s ${alndir}/${og}_nodup.aln --date ${calibdir}/${og}_anc_cal_dates.txt --date-tip 0 --redo -T 24 -B 1000 -m Q.plant+FO | tee -a log_05222022-${og}_1.log
done

