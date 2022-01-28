#!/bin/R

##### Get the missing OGs, make new OG lists to run.

setwd("/gpfs/projects/RestGroup/keffy/scratch/iq_tree")

finished_trees <- Sys.glob("*.treefile")
finished_ogs <- lapply(finished_trees, function(x) {substr(x,1,9)})
finished_ogs <- unlist(finished_ogs)

all_sp_ogs <- scan("../../clean_pipeline_plants/meta/OGs_all_sp.txt", character())

ogs_todo <- all_sp_ogs[!(all_sp_ogs %in% finished_ogs)]

writeLines(ogs_todo, "../../clean_pipeline_plants/meta/OGs_remaining.txt")