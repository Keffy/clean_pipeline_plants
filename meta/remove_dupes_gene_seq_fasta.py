#!/bin/python

from Bio import SeqIO

seq_dir = "/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/"
list_dir = "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/"

og_list = ["OG0001017","OG0001516","OG0001823","OG0001838","OG0002376","OG0002845","OG0002899","OG0003596","OG0003776","OG0003879","OG0005313","OG0006977","OG0011700","OG0012495","OG0018870","OG0019583"]

for og in og_list:
	filename = seq_dir + og + ".fa"
	filename2 = list_dir + og + "_clean_gene_list.txt"
	outfile = seq_dir + og + "_final_seqs_for_alignment.fa"
	all_seqs = []

	with open(filename) as handle:
		for record in SeqIO.parse(handle, "fasta"):
			all_seqs.append(record)

	with open(filename2) as f:
		limited_ids = f.read().splitlines()

	final_seqs = [x for x in all_seqs if x.id in limited_ids]

	with open(outfile,"w") as outf:
		SeqIO.write(final_seqs,outf,"fasta")


