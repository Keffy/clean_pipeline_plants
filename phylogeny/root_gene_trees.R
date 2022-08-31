#!/bin/R

### read in the trees and check different roots using ape or phytools

library(ape)
library(phytools)

setwd("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants")


# OG nums in order:
'''
OG0001017
OG0001516
OG0001823
OG0001838
OG0002376
OG0002845
OG0002899
OG0003596
OG0003776
OG0003879
OG0005313
OG0006977
OG0011700
OG0012495
OG0018870
OG0019583
'''

OG0001017_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0001017_nodup.aln.treefile")
OG0001516_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0001516_nodup.aln.treefile")
OG0001823_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0001823_nodup.aln.treefile")
OG0001838_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0001838_nodup.aln.treefile")
OG0002376_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0002376_nodup.aln.treefile")
OG0002845_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0002845_nodup.aln.treefile")
OG0002899_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0002899_nodup.aln.treefile")
OG0003596_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0003596_nodup.aln.treefile")
OG0003776_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0003776_nodup.aln.treefile")
OG0003879_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0003879_nodup.aln.treefile")
OG0005313_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0005313_nodup.aln.treefile")
OG0006977_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0006977_nodup.aln.treefile")
OG0011700_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0011700_nodup.aln.treefile")
OG0012495_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0012495_nodup.aln.treefile")
OG0018870_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0018870_nodup.aln.treefile")
OG0019583_tree <- read.tree("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/phylogeny/ethylene_specific/iqtree/OG0019583_nodup.aln.treefile")


tree_list <- list(OG0001017_tree, OG0001516_tree, OG0001823_tree, OG0001838_tree, OG0002376_tree, OG0002845_tree, OG0002899_tree, OG0003596_tree, OG0003776_tree, OG0003879_tree, OG0005313_tree, OG0006977_tree, OG0011700_tree, OG0012495_tree, OG0018870_tree, OG0019583_tree)

OG0001017_outgroups <- c() #Papaver not monophyletic
OG0001516_outgroups <- c(OG0001516_tree$tip.label[grep("Papaver", OG0001516_tree$tip.label)])
OG0001823_outgroups <- c(OG0001823_tree$tip.label[grep("Papaver", OG0001823_tree$tip.label)])
OG0001838_outgroups <- c(OG0001838_tree$tip.label[grep("Papaver", OG0001838_tree$tip.label)])
OG0002376_outgroups <- c(OG0002376_tree$tip.label[grep("Papaver", OG0002376_tree$tip.label)])
OG0002845_outgroups <- c(OG0002845_tree$tip.label[grep("Papaver", OG0002845_tree$tip.label)])
OG0002899_outgroups <- c(OG0002899_tree$tip.label[grep("Papaver", OG0002899_tree$tip.label)])
OG0003596_outgroups <- c(OG0003596_tree$tip.label[grep("Papaver", OG0003596_tree$tip.label)])
OG0003776_outgroups <- c(OG0003776_tree$tip.label[grep("Papaver", OG0003776_tree$tip.label)])
OG0003879_outgroups <- c(OG0003879_tree$tip.label[grep("Papaver", OG0003879_tree$tip.label)])
OG0005313_outgroups <- c(OG0005313_tree$tip.label[grep("Papaver", OG0005313_tree$tip.label)])
OG0006977_outgroups <- c(OG0006977_tree$tip.label[grep("Papaver", OG0006977_tree$tip.label)])
OG0011700_outgroups <- c() # No Papaver
OG0012495_outgroups <- c() # No Papaver
OG0018870_outgroups <- c() # No Papaver
OG0019583_outgroups <- c() # No Papaver

#OG0001017_papaver_root_1 <- root(OG0001017_tree, outgroup=OG0001017_outgroups, resolve.root=T)
OG0001516_papaver_root_1 <- root(OG0001516_tree, outgroup=OG0001516_outgroups, resolve.root=T)
OG0001516_papaver_root_1$
OG0001823_papaver_root_1 <- root(OG0001823_tree, outgroup=OG0001823_outgroups, resolve.root=T)
OG0001838_papaver_root_1 <- root(OG0001838_tree, outgroup=OG0001838_outgroups, resolve.root=T)
OG0002376_papaver_root_1 <- root(OG0002376_tree, outgroup=OG0002376_outgroups, resolve.root=T)
OG0002845_papaver_root_1 <- root(OG0002845_tree, outgroup=OG0002845_outgroups, resolve.root=T)
OG0002899_papaver_root_1 <- root(OG0002899_tree, outgroup=OG0002899_outgroups, resolve.root=T)
OG0003596_papaver_root_1 <- root(OG0003596_tree, outgroup=OG0003596_outgroups, resolve.root=T)
OG0003776_papaver_root_1 <- root(OG0003776_tree, outgroup=OG0003776_outgroups, resolve.root=T)
OG0003879_papaver_root_1 <- root(OG0003879_tree, outgroup=OG0003879_outgroups, resolve.root=T)
OG0005313_papaver_root_1 <- root(OG0005313_tree, outgroup=OG0005313_outgroups, resolve.root=T)
OG0006977_papaver_root_1 <- root(OG0006977_tree, outgroup=OG0006977_outgroups, resolve.root=T)
OG0006977_papaver_root_1 <- 
# OG0011700_papaver_root_1 <- root(OG0011700_tree, outgroup=OG0011700_outgroups, resolve.root=T)
# OG0012495_papaver_root_1 <- root(OG0012495_tree, outgroup=OG0012495_outgroups, resolve.root=T)
# OG0018870_papaver_root_1 <- root(OG0018870_tree, outgroup=OG0018870_outgroups, resolve.root=T)
# OG0019583_papaver_root_1 <- root(OG0019583_tree, outgroup=OG0019583_outgroups, resolve.root=T)