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

OG0001017_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0001017_clean_align.out.treefile")
OG0001516_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0001516_clean_align.out.treefile")
OG0001823_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0001823_clean_align.out.treefile")
OG0001838_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0001838_clean_align.out.treefile")
OG0002376_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0002376_clean_align.out.treefile")
OG0002845_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0002845_clean_align.out.treefile")
OG0002899_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0002899_clean_align.out.treefile")
OG0003596_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0003596_clean_align.out.treefile")
OG0003776_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0003776_clean_align.out.treefile")
OG0003879_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0003879_clean_align.out.treefile")
OG0005313_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0005313_clean_align.out.treefile")
OG0006977_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0006977_clean_align.out.treefile")
OG0011700_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0011700_clean_align.out.treefile")
OG0012495_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0012495_clean_align.out.treefile")
OG0018870_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0018870_clean_align.out.treefile")
OG0019583_tree <- read.tree("phylogeny/ethylene_specific/iqtree/OG0019583_clean_align.out.treefile")


tree_list <- list(OG0001017_tree, OG0001516_tree, OG0001823_tree, OG0001838_tree, OG0002376_tree, OG0002845_tree, OG0002899_tree, OG0003596_tree, OG0003776_tree, OG0003879_tree, OG0005313_tree, OG0006977_tree, OG0011700_tree, OG0012495_tree, OG0018870_tree, OG0019583_tree)


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