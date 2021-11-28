#!/bin/R

#################################################################
### Use ape to root / reroot the tree from Timetree.org       ###
### to make sure that the downstream functions will have the  ###
### correctly rooted tree with Papaver somniferum             ###
### as the outgroup.                                          ###
#################################################################


library(ape)

species_tree <- read.tree(file="phylogeny/species_tree_literature_based_lengths_nodenames.nwk")


species_tree_rooted <- root(species_tree, 32) # 32 is Papaver somniferum tip.

write.tree(species_tree_rooted, file="phylogeny/species_tree_rooted.nwk")