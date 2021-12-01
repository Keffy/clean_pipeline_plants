#!/bin/R

##########################################################################
## Using Open Tree of Life to get a species tree for my plant species.  ##
## OToL: https://tree.opentreeoflife.org/about/open-tree-of-life        ##
##########################################################################

library(rotl) #
library(ape)
library(stringi)
library(devtools)
library(datelife)
library(datelifeplot)
library(TreeTools)

## make sure you are in the clean_pipeline_plants directory

# setwd("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants")

# Get the species lists:

all_eudicot_species <- (read.table(file="meta/species_no_us.txt",sep="\n"))$V1
eudicots_no_pyrus <- all_eudicot_species[! all_eudicot_species %in% c("Pyrus x bretschneideri")]
eudicots_sub_pyrus <- all_eudicot_species
eudicots_sub_pyrus[28] <- "Pyrus communis"

# Get OTT numbers for all of the species
no_pyrus_resolved_names <- tnrs_match_names(names=eudicots_no_pyrus)
sub_pyrus_resolved_names <- tnrs_match_names(names=eudicots_sub_pyrus)

# Pull the subtrees (rooted, no branch lengths given)
no_pyrus_subtree <- tol_induced_subtree(ott_ids = no_pyrus_resolved_names$ott_id, label_format = "name")
sub_pyrus_subtree <- tol_induced_subtree(ott_ids = sub_pyrus_resolved_names$ott_id, label_format = "name")

plot(no_pyrus_subtree)
plot(sub_pyrus_subtree)

# get root MRCA node:

mrca_tree <- no_pyrus_subtree$node.label[1]
pentapetalae_resolved <- tnrs_match_names(names="Pentapetalae")
pentapetalae_node <- tol_node_info(pentapetalae_resolved$ott_id)
# full pentapetalae tree is too big for the API ( more than 100k tips )
# get pentapetalae_node 
pentapetalae_studies <- source_list(pentapetalae_node) # do in RNotebook


no_pyrus_date_query <- get_datelife_result(no_pyrus_subtree)



# Session information
writeLines(capture.output(session_info()), "sessionInfo.out")
writeLines(capture.output(tol_about()), "ToL version info"