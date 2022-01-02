#!/bin/R

##############################################################
## Filter the GeneCounts for only orthogroups with
## at least 

og_dir <- "/gpfs/projects/RestGroup/keffy/scratch/orthofinder_fasttree_2/Results_Dec25/Orthogroups/"
meta_dir <- "/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/"

all_ogs <- read.table(paste0(og_dir,"Orthogroups.GeneCount.tsv"), header=TRUE)

filter_by_total <- all_ogs[all_ogs$Total > 3,]

filt_total_for_apply <- filter_by_total[,2:33]

check_zeroes <- apply(filt_total_for_apply, 1, function(x) { sum(x != 0) > 2 }) 

ogs_filtered <- filter_by_total[check_zeroes,]

write.table(ogs_filtered, file = paste0(meta_dir, "Orthogroup_genecount_filtered.tsv"), quote=FALSE, sep="\t",row.names=FALSE)