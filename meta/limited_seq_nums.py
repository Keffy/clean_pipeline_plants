#!/bin/python

#Get only the genes needed for the analysis.
#remove all genes that are 100% duplicates.

from Bio import SeqIO

full_seq_dir = "/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/"
#OG.fa
expr_dir = "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/"
#OG_clean_gene_list.txt

all_OGs = ["OG0001017","OG0001516","OG0001823","OG0001838","OG0002376","OG0002845","OG0002899","OG0003596","OG0003776","OG0003879","OG0005313","OG0006977","OG0011700","OG0012495","OG0018870","OG0019583"]

# read in all sequences
fasta_by_OG = []

for og in all_OGs:
	with open(full_seq_dir + og + ".fa") as file:
		fasta_by_OG.append(list(SeqIO.parse(file, "fasta")))



# Get the list of existing files

exp_gene_lists = []

for og in all_OGs:
	with open(expr_dir + og + "_clean_gene_list.txt") as file:
		exp_gene_lists.append(list(file.read().splitlines()))




clean_accs_by_OG = []

for i in range(16):
	correct_vals = []
	for record in fasta_by_OG[i]:
		if record.id in exp_gene_lists[i]:
			correct_vals.append(record)
	clean_accs_by_OG.append(correct_vals)


for i in range(16):
	filename = full_seq_dir + all_OGs[i] + "_no_duplicates.fa"
	with open(filename, "w") as out_file:
		SeqIO.write(clean_accs_by_OG[i],out_file,"fasta")