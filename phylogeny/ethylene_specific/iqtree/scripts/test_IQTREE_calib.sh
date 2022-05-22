#!/bin/bash

module load iq-tree/2.0.6

alndir="mafft"
calibdir="iqtree/scripts"

## only OG0019583 to test

iqtree2 -s ${alndir}/OG0019583_nodup.aln --date ${calibdir}/OG0019583_anc_cal_dates.txt --date-tip 0 -T 24 -B 1000 -m Q.plant+FO | tee -a log_05222022-test.log

