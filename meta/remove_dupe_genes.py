#/bin/python

####
###

import os
import csv

ogs = ["OG0001017","OG0001516","OG0001823","OG0001838","OG0002376","OG0002845","OG0002899","OG0003596","OG0003776","OG0003879","OG0006977","OG0011700","OG0012495","OG0018870","OG0019583"]

tcoffeedir = "/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/"
expdir = "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/"


exp_list = []
id_list = []

for og in ogs:
	#read exp
	with open(expdir + og + "_exp.txt", "r") as file:
		reader = csv.reader(file, delimiter=" ")
		exprs = []
		for row in reader:
			exprs.append(row)
	exp_list.append(exprs)
	#read id
	with open(tcoffeedir + og + "_tcoffee_identical_botonly.txt") as file:
		reader = csv.reader(file, delimiter="\t")
		identical = []
		for row in reader:
			new_row = [row[4],row[5]]
			identical.append(new_row)
	id_list.append(identical)


for i in range(len(ogs)):
	for j in range(len(id_list[i])):



current_idlist = id_list[0]

first_genes = [x[0] for x in current_idlist]
second_genes = [x[1] for x in current_idlist]
in_both = [x for x in first_genes if x in second_genes]
first_only = [x for x in first_genes if x not in second_genes]
second_only = [x for x in second_genes if x not in first_genes]
first_only = list(set(first_only))
in_both = list(set(in_both))
second_only = list(set(second_only))


# use dictionary magic.

first_set = list(set(first_genes))
gene_dict = {key: None for key in first_only}

for gene in first_set:
	all_seconds = [item[1] for item in current_idlist if item[0] == gene]
	gene_dict[gene] = all_seconds

for gene in first_set:
	for sec in gene_dict[gene]:
		if sec in first_set:
			#combine
			gene_dict[gene].append(gene_dict[sec])


def flatten_list(_thicc_list):
	for item in _thicc_list:
		if type(item) == list:
			flatten_list(item)
		else:
			flat_list.append(item)
	return flat_list

final_list = []

for gene in gene_dict:
	temp_lst = [gene, gene_dict[gene]]
	flat_list = []
	new_temp = flatten_list(temp_lst)
	final_list.append(new_temp)

identical_gene_groups = []

def check_elems(lst):
	return len(set(lst)) == 1
	

for lst in final_list:
	if set(lst) not in identical_gene_groups:
		identical_gene_groups.append(set(lst))


