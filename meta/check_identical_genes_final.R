#!/bin/R

### brute force bullshit

og_list <- c("OG0001017","OG0001516","OG0001823","OG0001838","OG0002376","OG0002845","OG0002899","OG0003596","OG0003776","OG0003879","OG0005313","OG0006977","OG0011700","OG0012495","OG0018870","OG0019583")


OG0001017_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0001017_bottom_only_tcoffee.txt")
OG0001017_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0001017_exp_with_dupes.txt")
OG0001516_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0001516_bottom_only_tcoffee.txt")
OG0001516_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0001516_exp_with_dupes.txt")
OG0001823_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0001823_bottom_only_tcoffee.txt")
OG0001823_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0001823_exp_with_dupes.txt")
OG0001838_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0001838_bottom_only_tcoffee.txt")
OG0001838_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0001838_exp_with_dupes.txt")
OG0002376_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0002376_bottom_only_tcoffee.txt")
OG0002376_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0002376_exp_with_dupes.txt")
OG0002845_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0002845_bottom_only_tcoffee.txt")
OG0002845_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0002845_exp_with_dupes.txt")
OG0002899_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0002899_bottom_only_tcoffee.txt")
OG0002899_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0002899_exp_with_dupes.txt")
OG0003596_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0003596_bottom_only_tcoffee.txt")
OG0003596_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0003596_exp_with_dupes.txt")
OG0003776_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0003776_bottom_only_tcoffee.txt")
OG0003776_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0003776_exp_with_dupes.txt")
OG0003879_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0003879_bottom_only_tcoffee.txt")
OG0003879_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0003879_exp_with_dupes.txt")
OG0005313_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0005313_bottom_only_tcoffee.txt")
OG0005313_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0005313_exp_with_dupes.txt")
OG0006977_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0006977_bottom_only_tcoffee.txt")
OG0006977_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0006977_exp_with_dupes.txt")
OG0011700_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0011700_bottom_only_tcoffee.txt")
OG0011700_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0011700_exp_with_dupes.txt")
OG0012495_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0012495_bottom_only_tcoffee.txt")
OG0012495_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0012495_exp_with_dupes.txt")
OG0018870_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0018870_bottom_only_tcoffee.txt")
OG0018870_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0018870_exp_with_dupes.txt")
OG0019583_id <- read.table("/Volumes/MagicalHDD/DissertationGits/plant_data_files/ethylene_og_sequences/OG0019583_bottom_only_tcoffee.txt")
OG0019583_exprs <- read.table("/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0019583_exp_with_dupes.txt")

OG0001017_id <- OG0001017_id[,3:6]
OG0001516_id <- OG0001516_id[,3:6]
OG0001823_id <- OG0001823_id[,3:6]
OG0001838_id <- OG0001838_id[,3:6]
OG0002376_id <- OG0002376_id[,3:6]
OG0002845_id <- OG0002845_id[,3:6]
OG0002899_id <- OG0002899_id[,3:6]
OG0003596_id <- OG0003596_id[,3:6]
OG0003776_id <- OG0003776_id[,3:6]
OG0003879_id <- OG0003879_id[,3:6]
OG0005313_id <- OG0005313_id[,3:6]
OG0006977_id <- OG0006977_id[,3:6]
OG0011700_id <- OG0011700_id[,3:6]
OG0012495_id <- OG0012495_id[,3:6]
OG0018870_id <- OG0018870_id[,3:6]
OG0019583_id <- OG0019583_id[,3:6]
                

for (i in 1:length(OG0001017_id$V5)) {
	if (OG0001017_id$V5[i] %in% OG0001017_exprs$V1) {
		OG0001017_id[i,1] <- which(OG0001017_exprs$V1 == OG0001017_id$V5[i])
	} else {
		OG0001017_id[i,1] <- 0
	}
	if (OG0001017_id$V6[i] %in% OG0001017_exprs$V1) {
		OG0001017_id[i,2] <- which(OG0001017_exprs$V1 == OG0001017_id$V6[i])
	} else {
		OG0001017_id[i,2] <- 0
	}
}

for (i in 1:length(OG0001516_id$V5)) {
	if (OG0001516_id$V5[i] %in% OG0001516_exprs$V1) {
		OG0001516_id[i,1] <- which(OG0001516_exprs$V1 == OG0001516_id$V5[i])
	} else {
		OG0001516_id[i,1] <- 0
	}
	if (OG0001516_id$V6[i] %in% OG0001516_exprs$V1) {
		OG0001516_id[i,2] <- which(OG0001516_exprs$V1 == OG0001516_id$V6[i])
	} else {
		OG0001516_id[i,2] <- 0
	}
}
for (i in 1:length(OG0001823_id$V5)) {
	if (OG0001823_id$V5[i] %in% OG0001823_exprs$V1) {
		OG0001823_id[i,1] <- which(OG0001823_exprs$V1 == OG0001823_id$V5[i])
	} else {
		OG0001823_id[i,1] <- 0
	}
	if (OG0001823_id$V6[i] %in% OG0001823_exprs$V1) {
		OG0001823_id[i,2] <- which(OG0001823_exprs$V1 == OG0001823_id$V6[i])
	} else {
		OG0001823_id[i,2] <- 0
	}
}
for (i in 1:length(OG0001838_id$V5)) {
	if (OG0001838_id$V5[i] %in% OG0001838_exprs$V1) {
		OG0001838_id[i,1] <- which(OG0001838_exprs$V1 == OG0001838_id$V5[i])
	} else {
		OG0001838_id[i,1] <- 0
	}
	if (OG0001838_id$V6[i] %in% OG0001838_exprs$V1) {
		OG0001838_id[i,2] <- which(OG0001838_exprs$V1 == OG0001838_id$V6[i])
	} else {
		OG0001838_id[i,2] <- 0
	}
}
for (i in 1:length(OG0002376_id$V5)) {
	if (OG0002376_id$V5[i] %in% OG0002376_exprs$V1) {
		OG0002376_id[i,1] <- which(OG0002376_exprs$V1 == OG0002376_id$V5[i])
	} else {
		OG0002376_id[i,1] <- 0
	}
	if (OG0002376_id$V6[i] %in% OG0002376_exprs$V1) {
		OG0002376_id[i,2] <- which(OG0002376_exprs$V1 == OG0002376_id$V6[i])
	} else {
		OG0002376_id[i,2] <- 0
	}
}
for (i in 1:length(OG0002845_id$V5)) {
	if (OG0002845_id$V5[i] %in% OG0002845_exprs$V1) {
		OG0002845_id[i,1] <- which(OG0002845_exprs$V1 == OG0002845_id$V5[i])
	} else {
		OG0002845_id[i,1] <- 0
	}
	if (OG0002845_id$V6[i] %in% OG0002845_exprs$V1) {
		OG0002845_id[i,2] <- which(OG0002845_exprs$V1 == OG0002845_id$V6[i])
	} else {
		OG0002845_id[i,2] <- 0
	}
}
for (i in 1:length(OG0002899_id$V5)) {
	if (OG0002899_id$V5[i] %in% OG0002899_exprs$V1) {
		OG0002899_id[i,1] <- which(OG0002899_exprs$V1 == OG0002899_id$V5[i])
	} else {
		OG0002899_id[i,1] <- 0
	}
	if (OG0002899_id$V6[i] %in% OG0002899_exprs$V1) {
		OG0002899_id[i,2] <- which(OG0002899_exprs$V1 == OG0002899_id$V6[i])
	} else {
		OG0002899_id[i,2] <- 0
	}
}
for (i in 1:length(OG0003596_id$V5)) {
	if (OG0003596_id$V5[i] %in% OG0003596_exprs$V1) {
		OG0003596_id[i,1] <- which(OG0003596_exprs$V1 == OG0003596_id$V5[i])
	} else {
		OG0003596_id[i,1] <- 0
	}
	if (OG0003596_id$V6[i] %in% OG0003596_exprs$V1) {
		OG0003596_id[i,2] <- which(OG0003596_exprs$V1 == OG0003596_id$V6[i])
	} else {
		OG0003596_id[i,2] <- 0
	}
}
for (i in 1:length(OG0003776_id$V5)) {
	if (OG0003776_id$V5[i] %in% OG0003776_exprs$V1) {
		OG0003776_id[i,1] <- which(OG0003776_exprs$V1 == OG0003776_id$V5[i])
	} else {
		OG0003776_id[i,1] <- 0
	}
	if (OG0003776_id$V6[i] %in% OG0003776_exprs$V1) {
		OG0003776_id[i,2] <- which(OG0003776_exprs$V1 == OG0003776_id$V6[i])
	} else {
		OG0003776_id[i,2] <- 0
	}
}
for (i in 1:length(OG0003879_id$V5)) {
	if (OG0003879_id$V5[i] %in% OG0003879_exprs$V1) {
		OG0003879_id[i,1] <- which(OG0003879_exprs$V1 == OG0003879_id$V5[i])
	} else {
		OG0003879_id[i,1] <- 0
	}
	if (OG0003879_id$V6[i] %in% OG0003879_exprs$V1) {
		OG0003879_id[i,2] <- which(OG0003879_exprs$V1 == OG0003879_id$V6[i])
	} else {
		OG0003879_id[i,2] <- 0
	}
}
for (i in 1:length(OG0005313_id$V5)) {
	if (OG0005313_id$V5[i] %in% OG0005313_exprs$V1) {
		OG0005313_id[i,1] <- which(OG0005313_exprs$V1 == OG0005313_id$V5[i])
	} else {
		OG0005313_id[i,1] <- 0
	}
	if (OG0005313_id$V6[i] %in% OG0005313_exprs$V1) {
		OG0005313_id[i,2] <- which(OG0005313_exprs$V1 == OG0005313_id$V6[i])
	} else {
		OG0005313_id[i,2] <- 0
	}
}
for (i in 1:length(OG0006977_id$V5)) {
	if (OG0006977_id$V5[i] %in% OG0006977_exprs$V1) {
		OG0006977_id[i,1] <- which(OG0006977_exprs$V1 == OG0006977_id$V5[i])
	} else {
		OG0006977_id[i,1] <- 0
	}
	if (OG0006977_id$V6[i] %in% OG0006977_exprs$V1) {
		OG0006977_id[i,2] <- which(OG0006977_exprs$V1 == OG0006977_id$V6[i])
	} else {
		OG0006977_id[i,2] <- 0
	}
}
for (i in 1:length(OG0011700_id$V5)) {
	if (OG0011700_id$V5[i] %in% OG0011700_exprs$V1) {
		OG0011700_id[i,1] <- which(OG0011700_exprs$V1 == OG0011700_id$V5[i])
	} else {
		OG0011700_id[i,1] <- 0
	}
	if (OG0011700_id$V6[i] %in% OG0011700_exprs$V1) {
		OG0011700_id[i,2] <- which(OG0011700_exprs$V1 == OG0011700_id$V6[i])
	} else {
		OG0011700_id[i,2] <- 0
	}
}
for (i in 1:length(OG0012495_id$V5)) {
	if (OG0012495_id$V5[i] %in% OG0012495_exprs$V1) {
		OG0012495_id[i,1] <- which(OG0012495_exprs$V1 == OG0012495_id$V5[i])
	} else {
		OG0012495_id[i,1] <- 0
	}
	if (OG0012495_id$V6[i] %in% OG0012495_exprs$V1) {
		OG0012495_id[i,2] <- which(OG0012495_exprs$V1 == OG0012495_id$V6[i])
	} else {
		OG0012495_id[i,2] <- 0
	}
}
for (i in 1:length(OG0018870_id$V5)) {
	if (OG0018870_id$V5[i] %in% OG0018870_exprs$V1) {
		OG0018870_id[i,1] <- which(OG0018870_exprs$V1 == OG0018870_id$V5[i])
	} else {
		OG0018870_id[i,1] <- 0
	}
	if (OG0018870_id$V6[i] %in% OG0018870_exprs$V1) {
		OG0018870_id[i,2] <- which(OG0018870_exprs$V1 == OG0018870_id$V6[i])
	} else {
		OG0018870_id[i,2] <- 0
	}
}
for (i in 1:length(OG0019583_id$V5)) {
	if (OG0019583_id$V5[i] %in% OG0019583_exprs$V1) {
		OG0019583_id[i,1] <- which(OG0019583_exprs$V1 == OG0019583_id$V5[i])
	} else {
		OG0019583_id[i,1] <- 0
	}
	if (OG0019583_id$V6[i] %in% OG0019583_exprs$V1) {
		OG0019583_id[i,2] <- which(OG0019583_exprs$V1 == OG0019583_id$V6[i])
	} else {
		OG0019583_id[i,2] <- 0
	}
}


OG0001017_exprs[163,3] <- mean(c(OG0001017_exprs[163,3], OG0001017_exprs[165,3]))
OG0001017_exprs[162,4] <- mean(c(OG0001017_exprs[162,3], OG0001017_exprs[164,3]))
OG0001017_exprs[158,3] <- mean(c(OG0001017_exprs[158,3], OG0001017_exprs[159,3]))
OG0001017_exprs[144,3] <- mean(c(OG0001017_exprs[144,3], OG0001017_exprs[145,3]))
OG0001017_exprs[131,3] <- mean(c(OG0001017_exprs[131,3], OG0001017_exprs[136,3], OG0001017_exprs[137,3]))
OG0001017_exprs[132,3] <- mean(c(OG0001017_exprs[132,3], OG0001017_exprs[133,3]))
OG0001017_exprs[123,3] <- mean(c(OG0001017_exprs[123,3],OG0001017_exprs[124,3],OG0001017_exprs[125,3]))
OG0001017_exprs[121,3] <- mean(c(OG0001017_exprs[121,3],OG0001017_exprs[122,3]))
OG0001017_exprs[114,3] <- mean(c(OG0001017_exprs[114,3], OG0001017_exprs[115,3]))
OG0001017_exprs[111,3] <- mean(c(OG0001017_exprs[111,3],OG0001017_exprs[112,3]))
OG0001017_exprs[106,3] <- mean(c(OG0001017_exprs[106,3],OG0001017_exprs[107,3],OG0001017_exprs[108,3]))
OG0001017_exprs[104,3] <- mean(c(OG0001017_exprs[104,3],OG0001017_exprs[105,3]))
OG0001017_exprs[99,3] <- mean(c(OG0001017_exprs[99,3],OG0001017_exprs[100,3]))
OG0001017_exprs[91,3] <- mean(c(OG0001017_exprs[91,3],OG0001017_exprs[98,3]))
OG0001017_exprs[96,3] <- mean(c(OG0001017_exprs[96,3],OG0001017_exprs[97,3]))
OG0001017_exprs[94,3] <- mean(c(OG0001017_exprs[94,3],OG0001017_exprs[95,3]))
OG0001017_exprs[92,3] <- mean(c(OG0001017_exprs[92,3],OG0001017_exprs[93,3]))
OG0001017_exprs[89,3] <- mean(c(OG0001017_exprs[89,3],OG0001017_exprs[90,3]))
OG0001017_exprs[83,3] <- mean(c(OG0001017_exprs[83,3],OG0001017_exprs[84,3],OG0001017_exprs[85,3]))
OG0001017_exprs[74,3] <- mean(c(OG0001017_exprs[74,3],OG0001017_exprs[75,3]))
OG0001017_exprs[60,3] <- mean(c(OG0001017_exprs[60,3],OG0001017_exprs[62,3],OG0001017_exprs[63,3]))
OG0001017_exprs[54,3] <- mean(c(OG0001017_exprs[54,3],OG0001017_exprs[55,3]))
OG0001017_exprs[50,3] <- mean(c(OG0001017_exprs[50,3],OG0001017_exprs[51,3]))
OG0001017_exprs[48,3] <- mean(c(OG0001017_exprs[48,3],OG0001017_exprs[49,3]))
OG0001017_exprs[45,3] <- mean(c(OG0001017_exprs[45,3],OG0001017_exprs[46,3],OG0001017_exprs[47,3]))
OG0001017_exprs[42,3] <- mean(c(OG0001017_exprs[42,3],OG0001017_exprs[43,3],OG0001017_exprs[44,3]))
OG0001017_exprs[34,3] <- mean(c(OG0001017_exprs[34,3],OG0001017_exprs[35,3]))
OG0001017_exprs[18,3] <- mean(c(OG0001017_exprs[18,3],OG0001017_exprs[21,3],OG0001017_exprs[24,3],OG0001017_exprs[25,3],OG0001017_exprs[26,3],OG0001017_exprs[27,3],OG0001017_exprs[28,3],OG0001017_exprs[29,3],OG0001017_exprs[31,3],OG0001017_exprs[32,3],OG0001017_exprs[33,3]))
OG0001017_exprs[12,3] <- mean(c(OG0001017_exprs[12,3],OG0001017_exprs[13,3],OG0001017_exprs[14,3],OG0001017_exprs[15,3]))
OG0001017_exprs[9,3] <- mean(c(OG0001017_exprs[9,3],OG0001017_exprs[10,3],OG0001017_exprs[11,3]))
OG0001017_exprs[6,3] <- mean(c(OG0001017_exprs[6,3],OG0001017_exprs[7,3]))


rows_to_remove <- c(7,10,11,13,14,15,17,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,35,43,44,46,47,49,51,55,62,63,75,77,84,85,87,90,93,95,97,98,100,105,107,108,112,115,122,124,125,126,130,133,135,136,137,138,164,165)

OG0001017_exprs <- OG0001017_exprs[-rows_to_remove,]

write.table(OG0001017_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0001017_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)


OG0001516_exprs[131,3] <- mean(c(OG0001516_exprs[131,3],OG0001516_exprs[136,3],OG0001516_exprs[137,3]))
OG0001516_exprs[132,3] <- mean(c(OG0001516_exprs[132,3],OG0001516_exprs[133,3],OG0001516_exprs[134,3],OG0001516_exprs[135,3]))
OG0001516_exprs[127,3] <- mean(c(OG0001516_exprs[127,3],OG0001516_exprs[130,3]))
OG0001516_exprs[123,3] <- mean(c(OG0001516_exprs[123,3],OG0001516_exprs[124,3],OG0001516_exprs[125,3]))
OG0001516_exprs[115,3] <- mean(c(OG0001516_exprs[115,3],OG0001516_exprs[116,3],OG0001516_exprs[117,3]))
OG0001516_exprs[84,3] <- mean(c(OG0001516_exprs[84,3],OG0001516_exprs[87,3]))
OG0001516_exprs[80,3] <- mean(c(OG0001516_exprs[80,3],OG0001516_exprs[81,3]))
OG0001516_exprs[44,3] <- mean(c(OG0001516_exprs[44,3],OG0001516_exprs[46,3]))
OG0001516_exprs[37,3] <- mean(c(OG0001516_exprs[37,3],OG0001516_exprs[38,3],OG0001516_exprs[39,3]))
OG0001516_exprs[32,3] <- mean(c(OG0001516_exprs[32,3],OG0001516_exprs[33,3],OG0001516_exprs[34,3]))
OG0001516_exprs[27,3] <- mean(c(OG0001516_exprs[27,3],OG0001516_exprs[28,3],OG0001516_exprs[30,3]))
OG0001516_exprs[12,3] <- mean(c(OG0001516_exprs[12,3],OG0001516_exprs[13,3],OG0001516_exprs[14,3]))
OG0001516_exprs[6,3] <- mean(c(OG0001516_exprs[6,3],OG0001516_exprs[7,3]))
OG0001516_exprs[4,3] <- mean(c(OG0001516_exprs[4,3],OG0001516_exprs[5,3]))
OG0001516_exprs[2,3] <- mean(c(OG0001516_exprs[2,3],OG0001516_exprs[3,3]))


rows_to_remove <- c(3,5,7,13,14,28,30,33,34,38,39,46,81,85,87,88,90,91,92,95,116,117,124,125,130,133,134,135,136,137)

OG0001516_exprs <- OG0001516_exprs[-rows_to_remove,]

write.table(OG0001516_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0001516_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)


OG0001823_exprs[114,3] <- mean(c(OG0001823_exprs[114,3],OG0001823_exprs[115,3],OG0001823_exprs[116,3]))

rows_to_remove <- c(115,116)

OG0001823_exprs <- OG0001823_exprs[-rows_to_remove,]

write.table(OG0001823_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0001823_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)


OG0001838_exprs[124,3] <- mean(c(OG0001838_exprs[124,3],OG0001838_exprs[125,3]))
OG0001838_exprs[112,3] <- mean(c(OG0001838_exprs[112,3],OG0001838_exprs[113,3],OG0001838_exprs[114,3]))
OG0001838_exprs[106,3] <- mean(c(OG0001838_exprs[106,3],OG0001838_exprs[111,3]))
OG0001838_exprs[101,3] <- mean(c(OG0001838_exprs[101,3],OG0001838_exprs[102,3]))
OG0001838_exprs[86,3] <- mean(c(OG0001838_exprs[86,3],OG0001838_exprs[87,3]))
OG0001838_exprs[62,3] <- mean(c(OG0001838_exprs[62,3],OG0001838_exprs[64,3]))
OG0001838_exprs[60,3] <- mean(c(OG0001838_exprs[60,3],OG0001838_exprs[61,3]))
OG0001838_exprs[53,3] <- mean(c(OG0001838_exprs[53,3],OG0001838_exprs[54,3]))
OG0001838_exprs[50,3] <- mean(c(OG0001838_exprs[50,3],OG0001838_exprs[51,3]))
OG0001838_exprs[40,3] <- mean(c(OG0001838_exprs[40,3],OG0001838_exprs[41,3]))
OG0001838_exprs[29,3] <- mean(c(OG0001838_exprs[29,3],OG0001838_exprs[31,3]))
OG0001838_exprs[7,3] <- mean(c(OG0001838_exprs[7,3],OG0001838_exprs[8,3]))
OG0001838_exprs[4,3] <- mean(c(OG0001838_exprs[4,3],OG0001838_exprs[6,3]))

rows_to_remove <- c(6,8,30,31,41,46,51,54,61,63,64,87,96,102,111,113,114,125)

OG0001838_exprs <- OG0001838_exprs[-rows_to_remove,]

write.table(OG0001838_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0001838_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

#OG0002376

rows_to_remove <- c(52,53)

OG0002376_exprs <- OG0002376_exprs[-rows_to_remove,]

write.table(OG0002376_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0002376_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0002845_exprs[96,3] <- mean(c(OG0002845_exprs[96,3],OG0002845_exprs[97,3]))
OG0002845_exprs[92,3] <- mean(c(OG0002845_exprs[92,3],OG0002845_exprs[93,3],OG0002845_exprs[94,3],OG0002845_exprs[95,3]))
OG0002845_exprs[90,3] <- mean(c(OG0002845_exprs[90,3],OG0002845_exprs[91,3]))
OG0002845_exprs[88,3] <- mean(c(OG0002845_exprs[88,3],OG0002845_exprs[89,3]))
OG0002845_exprs[83,3] <- mean(c(OG0002845_exprs[83,3],OG0002845_exprs[84,3]))
OG0002845_exprs[79,3] <- mean(c(OG0002845_exprs[79,3],OG0002845_exprs[80,3]))
OG0002845_exprs[76,3] <- mean(c(OG0002845_exprs[76,3],OG0002845_exprs[77,3]))
OG0002845_exprs[70,3] <- mean(c(OG0002845_exprs[70,3],OG0002845_exprs[71,3],OG0002845_exprs[72,3],OG0002845_exprs[73,3],OG0002845_exprs[75,3]))
OG0002845_exprs[65,3] <- mean(c(OG0002845_exprs[65,3],OG0002845_exprs[66,3],OG0002845_exprs[67,3],OG0002845_exprs[68,3]))
OG0002845_exprs[61,3] <- mean(c(OG0002845_exprs[61,3],OG0002845_exprs[62,3],OG0002845_exprs[63,3],OG0002845_exprs[64,3]))
OG0002845_exprs[56,3] <- mean(c(OG0002845_exprs[56,3],OG0002845_exprs[57,3],OG0002845_exprs[58,3],OG0002845_exprs[59,3]))
OG0002845_exprs[51,3] <- mean(c(OG0002845_exprs[51,3],OG0002845_exprs[52,3]))
OG0002845_exprs[48,3] <- mean(c(OG0002845_exprs[48,3],OG0002845_exprs[49,3]))
OG0002845_exprs[42,3] <- mean(c(OG0002845_exprs[42,3],OG0002845_exprs[43,3]))
OG0002845_exprs[39,3] <- mean(c(OG0002845_exprs[39,3],OG0002845_exprs[40,3]))
OG0002845_exprs[36,3] <- mean(c(OG0002845_exprs[36,3],OG0002845_exprs[38,3]))
OG0002845_exprs[20,3] <- mean(c(OG0002845_exprs[20,3],OG0002845_exprs[21,3],OG0002845_exprs[25,3]))
OG0002845_exprs[23,3] <- mean(c(OG0002845_exprs[23,3],OG0002845_exprs[24,3]))
OG0002845_exprs[3,3] <- mean(c(OG0002845_exprs[3,3],OG0002845_exprs[4,3]))

rows_to_remove <- c(4,14,21,24,25,31,35,37,38,40,43,47,49,52,57,58,59,60,62,63,64,66,67,68,71,72,73,74,75,77,80,81,84,89,91,93,94,95,97)

OG0002845_id <- OG0002845_id[-rows_to_remove,]

write.table(OG0002845_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0002845_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0002899_exprs[36,3] <- mean(c(OG0002899_exprs[36,3],OG0002899_exprs[39,3]))
OG0002899_exprs[21,3] <- mean(c(OG0002899_exprs[21,3],OG0002899_exprs[22,3]))
OG0002899_exprs[14,3] <- mean(c(OG0002899_exprs[14,3],OG0002899_exprs[15,3]))
OG0002899_exprs[4,3] <- mean(c(OG0002899_exprs[4,3],OG0002899_exprs[5,3]))

rows_to_remove <- c(2,5,15,22,39)

OG0002899_exprs <- OG0002899_id[-rows_to_remove,]

write.table(OG0002899_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0002899_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0003596_exprs[78,3] <- mean(c(OG0003596_exprs[78,3],OG0003596_exprs[79,3]))
OG0003596_exprs[69,3] <- mean(c(OG0003596_exprs[69,3],OG0003596_exprs[70,3]))
OG0003596_exprs[32,3] <- mean(c(OG0003596_exprs[32,3],OG0003596_exprs[33,3]))
OG0003596_exprs[15,3] <- mean(c(OG0003596_exprs[15,3],OG0003596_exprs[16,3]))

rows_to_remove <- c(16,33,70,79)

OG0003596_exprs <- OG0003596_exprs[-rows_to_remove,]

write.table(OG0003596_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0003596_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0003776_exprs[80,3] <- mean(c(OG0003776_exprs[80,3],OG0003776_exprs[81,3],OG0003776_exprs[82,3]))
OG0003776_exprs[64,3] <- mean(c(OG0003776_exprs[64,3],OG0003776_exprs[65,3]))
OG0003776_exprs[57,3] <- mean(c(OG0003776_exprs[57,3],OG0003776_exprs[60,3]))
OG0003776_exprs[53,3] <- mean(c(OG0003776_exprs[53,3],OG0003776_exprs[54,3]))
OG0003776_exprs[43,3] <- mean(c(OG0003776_exprs[43,3],OG0003776_exprs[44,3]))
OG0003776_exprs[30,3] <- mean(c(OG0003776_exprs[30,3],OG0003776_exprs[31,3]))
OG0003776_exprs[23,3] <- mean(c(OG0003776_exprs[23,3],OG0003776_exprs[24,3],OG0003776_exprs[25,3],OG0003776_exprs[26,3],OG0003776_exprs[27,3],OG0003776_exprs[28,3],OG0003776_exprs[32,3],OG0003776_exprs[33,3]))
OG0003776_exprs[16,3] <- mean(c(OG0003776_exprs[16,3],OG0003776_exprs[17,3]))
OG0003776_exprs[10,3] <- mean(c(OG0003776_exprs[10,3],OG0003776_exprs[11,3],OG0003776_exprs[12,3]))
OG0003776_exprs[7,3] <- mean(c(OG0003776_exprs[7,3],OG0003776_exprs[8,3]))
OG0003776_exprs[1,3] <- mean(c(OG0003776_exprs[1,3],OG0003776_exprs[2,3]))

rows_to_remove <- c(2,8,11,12,17,24,25,26,27,28,31,32,33,35,36,44,54,60,65,81,82)

OG0003776_exprs <- OG0003776_exprs[-rows_to_remove,]

write.table(OG0003776_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0003776_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0003879_exprs[93,3] <- mean(c(OG0003879_exprs[93,3],OG0003879_exprs[94,3]))
OG0003879_exprs[83,3] <- mean(c(OG0003879_exprs[83,3],OG0003879_exprs[85,3]))
OG0003879_exprs[69,3] <- mean(c(OG0003879_exprs[69,3],OG0003879_exprs[71,3],OG0003879_exprs[72,3]))
OG0003879_exprs[64,3] <- mean(c(OG0003879_exprs[64,3],OG0003879_exprs[65,3],OG0003879_exprs[66,3],OG0003879_exprs[67,3]))
OG0003879_exprs[55,3] <- mean(c(OG0003879_exprs[55,3],OG0003879_exprs[56,3],OG0003879_exprs[57,3]))

rows_to_remove <- c(56,57,71,72,75,78,79,84,85,94)

OG0003879_exprs <- OG0003879_exprs[-rows_to_remove,]

write.table(OG0003879_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0003879_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0005313_exprs[68,3] <- mean(c(OG0005313_exprs[68,3],OG0005313_exprs[69,3],OG0005313_exprs[70,3]))
OG0005313_exprs[41,3] <- mean(c(OG0005313_exprs[41,3],OG0005313_exprs[43,3]))
OG0005313_exprs[23,3] <- mean(c(OG0005313_exprs[23,3],OG0005313_exprs[27,3],OG0005313_exprs[28,3],OG0005313_exprs[37,3],OG0005313_exprs[38,3]))
OG0005313_exprs[26,3] <- mean(c(OG0005313_exprs[26,3],OG0005313_exprs[32,3],OG0005313_exprs[33,3],OG0005313_exprs[34,3]))
OG0005313_exprs[25,3] <- mean(c(OG0005313_exprs[25,3],OG0005313_exprs[36,3]))
OG0005313_exprs[20,3] <- mean(c(OG0005313_exprs[20,3],OG0005313_exprs[22,3]))
OG0005313_exprs[17,3] <- mean(c(OG0005313_exprs[17,3],OG0005313_exprs[18,3],OG0005313_exprs[19,3]))
OG0005313_exprs[8,3] <- mean(c(OG0005313_exprs[8,3],OG0005313_exprs[9,3],OG0005313_exprs[10,3]))

rows_to_remove <- c(9,10,18,19,21,22,27,28,32,33,36,37,38,43,69,70)

OG0005313_exprs <- OG0005313_exprs[-rows_to_remove,]

write.table(OG0005313_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0005313_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0006977_exprs[34,3] <- mean(c(OG0006977_exprs[34,3],OG0006977_exprs[35,3]))

rows_to_remove <- c(35)

OG0006977_exprs <- OG0006977_exprs[-rows_to_remove,]

write.table(OG0006977_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0006977_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0011700_exprs[25,3] <- mean(c(OG0011700_exprs[25,3],OG0011700_exprs[26,3]))
OG0011700_exprs[10,3] <- mean(c(OG0011700_exprs[10,3],OG0011700_exprs[11,3])) 

rows_to_remove <- c(11,26)

OG0011700_exprs <- OG0011700_exprs[-rows_to_remove,]

write.table(OG0011700_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0011700_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0012495_exprs[7,3] <- mean(c(OG0012495_exprs[7,3],OG0012495_exprs[9,3]))

rows_to_remove <- c(9)

OG0012495_exprs <- OG0012495_exprs[-rows_to_remove,]

write.table(OG0012495_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0012495_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0018870_exprs[9,3] <- mean(c(OG0018870_exprs[9,3],OG0018870_exprs[10,3]))
OG0018870_exprs[7,3] <- mean(c(OG0018870_exprs[7,3],OG0018870_exprs[8,3]))
OG0018870_exprs[3,3] <- mean(c(OG0018870_exprs[3,3],OG0018870_exprs[4,3]))
OG0018870_exprs[1,3] <- mean(c(OG0018870_exprs[1,3],OG0018870_exprs[2,3]))

rows_to_remove <- c(2,4,8,10)

OG0018870_exprs <- OG0018870_exprs[-rows_to_remove,]

write.table(OG0018870_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0018870_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)

OG0019583_exprs[3,3] <- mean(c(OG0019583_exprs[3,3],OG0019583_exprs[5,3]))

rows_to_remove <- c(5)

OG0019583_exprs <- OG0019583_exprs[-rows_to_remove,]

write.table(OG0019583_exprs, "/Volumes/MagicalHDD/DissertationGits/clean_pipeline_plants/meta/eth_quants_by_OG/OG0019583_expr_clean.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)



