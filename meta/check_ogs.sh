#!/bin/R

### find the orthogroups that are the same / which are different.

old_path <- "/gpfs/projects/RestGroup/keffy/orthofinder_plants/Orthogroups/Orthogroups.txt"
new_path <- "/gpfs/projects/RestGroup/keffy/scratch/orthofinder_fasttree_2/Results_Dec25/Orthogroups/Orthogroups.txt"

new_ogs <- read.table(file=new_path, sep=":",header=FALSE)
old_ogs <- read.table(file=old_path, sep=":",header=FALSE)

new_ogs_trunc <- new_ogs[1:15000,]
old_ogs_trunc <- old_ogs[1:15000,]

in_common <- intersect(old_ogs_trunc$V2,new_ogs_trunc$V2)