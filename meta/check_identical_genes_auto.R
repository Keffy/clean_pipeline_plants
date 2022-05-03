#!/bin/R

### Use R to get lists of identical proteins by orthogroup and species

ogs <- c("OG0001017","OG0001516","OG0001823","OG0001838","OG0002376","OG0002845","OG0002899","OG0003596","OG0003776","OG0003879","OG0006977","OG0011700","OG0012495","OG0018870","OG0019583")

tcoffeedir <- "/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/"
expdir <- "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/"

list_by_og <- vector(mode="list",length=length(ogs))

# read in data
for (i in 1:length(ogs)) {
	in_exprs <- read.table(paste0(expdir,ogs[i],"_exp.txt"))
	item_name <- paste0(ogs[i],"_exprs")
	assign(item_name,in_exprs)
	in_tcoffee <- read.table(paste0(tcoffeedir,ogs[i],"_tcoffee_identical.out"))
	item_name2 <- paste0(ogs[i],"_identical")
	in_tcoffee <- in_tcoffee[in_tcoffee[1] == "BOT",]
	assign(item_name2,in_tcoffee)
}


list_by_og[[1]] <- c(OG0001017_exprs, OG0001017_identical)
list_by_og[[2]] <- c(OG0001516_exprs, OG0001516_identical)
list_by_og[[3]] <- c(OG0001823_exprs, OG0001823_identical)
list_by_og[[4]] <- c(OG0001838_exprs, OG0001838_identical)
list_by_og[[5]] <- c(OG0002376_exprs, OG0002376_identical)
list_by_og[[6]] <- c(OG0002845_exprs, OG0002845_identical)
list_by_og[[7]] <- c(OG0002899_exprs, OG0002899_identical)
list_by_og[[8]] <- c(OG0003596_exprs, OG0003596_identical)
list_by_og[[9]] <- c(OG0003776_exprs, OG0003776_identical)
list_by_og[[10]] <- c(OG0003879_exprs, OG0003879_identical)
list_by_og[[11]] <- c(OG0006977_exprs, OG0006977_identical)
list_by_og[[12]] <- c(OG0011700_exprs, OG0011700_identical)
list_by_og[[13]] <- c(OG0012495_exprs, OG0012495_identical)
list_by_og[[14]] <- c(OG0018870_exprs, OG0018870_identical)
list_by_og[[15]] <- c(OG0019583_exprs, OG0019583_identical)

names(list_by_og) <- ogs


#get lists of genes that are identical with each other
for i in (1:length(ogs)) {
	id_matrix <- list_by_og[[i]][[2]]
	protV5 <- id_matrix$V5
	protV6 <- id_matrix$V6
	uprotV5 <- unique(protV5)
	uprotV6 <- unique(protV6)
	prot_both <- intersect(uprotV5,uprotV6)
	onlyV5 <- uprotV5[!(uprotV5 %in% prot_both)]
	onlyV6 <- uprotV6[!(uprotV6 %in% prot_both)]
	all_identical_proteins <- vector(mode="list")
	for j in (1:length(uprotV5)){
		if (uprotV5[j] %in% onlyV5) {
			id_prot <- c(uprotV5[j],id_matrix[uprotV5[j],])
		}
	}
}
