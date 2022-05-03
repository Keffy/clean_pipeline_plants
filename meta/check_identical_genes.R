#!/bin/R

## using R to get lists of identical proteins to check out

setwd("K:/Cluster_backup/dissertation_gits/plant_data_files/ethylene_og_sequences")

og_list <- c("OG0011700", "OG0003776", "OG0003879", "OG0001838", "OG0018870", "OG0001516", "OG0002845", "OG0001017", "OG0019583", "OG0005313", "OG0002899", "OG0012495", "OG0002376", "OG0001823", "OG0006977", "OG0003596")

OG0011700_id <- read.table("OG0011700_tcoffee_identical.out")
OG0011700_genes_w_dupes <- unique(OG0011700_id$V5)
write.table(OG0011700_genes_w_dupes, file="OG0011700_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0003776_id <- read.table("OG0003776_tcoffee_identical.out")
OG0003776_genes_w_dupes <- unique(OG0003776_id$V5)
write.table(OG0003776_genes_w_dupes, file="OG0003776_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0003879_id <- read.table("OG0003879_tcoffee_identical.out")
OG0003879_genes_w_dupes <- unique(OG0003879_id$V5)
write.table(OG0003879_genes_w_dupes, file="OG0003879_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0001838_id <- read.table("OG0001838_tcoffee_identical.out")
OG0001838_genes_w_dupes <- unique(OG0001838_id$V5)
write.table(OG0001838_genes_w_dupes, file="OG0001838_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0018870_id <- read.table("OG0018870_tcoffee_identical.out")
OG0018870_genes_w_dupes <- unique(OG0018870_id$V5)
write.table(OG0018870_genes_w_dupes, file="OG0018870_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0001516_id <- read.table("OG0001516_tcoffee_identical.out")
OG0001516_genes_w_dupes <- unique(OG0001516_id$V5)
write.table(OG0001516_genes_w_dupes, file="OG0001516_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0002845_id <- read.table("OG0002845_tcoffee_identical.out")
OG0002845_genes_w_dupes <- unique(OG0002845_id$V5)
write.table(OG0002845_genes_w_dupes, file="OG0002845_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0001017_id <- read.table("OG0001017_tcoffee_identical.out")
OG0001017_genes_w_dupes <- unique(OG0001017_id$V5)
write.table(OG0001017_genes_w_dupes, file="OG0001017_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0019583_id <- read.table("OG0019583_tcoffee_identical.out")
OG0019583_genes_w_dupes <- unique(OG0019583_id$V5)
write.table(OG0019583_genes_w_dupes, file="OG0019583_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0005313_id <- read.table("OG0005313_tcoffee_identical.out")
OG0005313_genes_w_dupes <- unique(OG0005313_id$V5)
write.table(OG0005313_genes_w_dupes, file="OG0005313_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0002899_id <- read.table("OG0002899_tcoffee_identical.out")
OG0002899_genes_w_dupes <- unique(OG0002899_id$V5)
write.table(OG0002899_genes_w_dupes, file="OG0002899_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0012495_id <- read.table("OG0012495_tcoffee_identical.out")
OG0012495_genes_w_dupes <- unique(OG0012495_id$V5)
write.table(OG0012495_genes_w_dupes, file="OG0012495_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0002376_id <- read.table("OG0002376_tcoffee_identical.out")
OG0002376_genes_w_dupes <- unique(OG0002376_id$V5)
write.table(OG0002376_genes_w_dupes, file="OG0002376_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0001823_id <- read.table("OG0001823_tcoffee_identical.out")
OG0001823_genes_w_dupes <- unique(OG0001823_id$V5)
write.table(OG0001823_genes_w_dupes, file="OG0001823_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0006977_id <- read.table("OG0006977_tcoffee_identical.out")
OG0006977_genes_w_dupes <- unique(OG0006977_id$V5)
write.table(OG0006977_genes_w_dupes, file="OG0006977_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)
OG0003596_id <- read.table("OG0003596_tcoffee_identical.out")
OG0003596_genes_w_dupes <- unique(OG0003596_id$V5)
write.table(OG0003596_genes_w_dupes, file="OG0003596_genes_w_dupes.txt",col.names=FALSE,row.names=FALSE,quote=FALSE)


OG0011700_exprs <- read.table("../eth_quants_by_OG/OG0011700_exp.txt")
OG0003776_exprs <- read.table("../eth_quants_by_OG/OG0003776_exp.txt")
OG0003879_exprs <- read.table("../eth_quants_by_OG/OG0003879_exp.txt")
OG0001838_exprs <- read.table("../eth_quants_by_OG/OG0001838_exp.txt")
OG0018870_exprs <- read.table("../eth_quants_by_OG/OG0018870_exp.txt")
OG0001516_exprs <- read.table("../eth_quants_by_OG/OG0001516_exp.txt")
OG0002845_exprs <- read.table("../eth_quants_by_OG/OG0002845_exp.txt")
OG0001017_exprs <- read.table("../eth_quants_by_OG/OG0001017_exp.txt")
OG0019583_exprs <- read.table("../eth_quants_by_OG/OG0019583_exp.txt")
OG0005313_exprs <- read.table("../eth_quants_by_OG/OG0005313_exp.txt")
OG0002899_exprs <- read.table("../eth_quants_by_OG/OG0002899_exp.txt")
OG0012495_exprs <- read.table("../eth_quants_by_OG/OG0012495_exp.txt")
OG0002376_exprs <- read.table("../eth_quants_by_OG/OG0002376_exp.txt")
OG0001823_exprs <- read.table("../eth_quants_by_OG/OG0001823_exp.txt")
OG0006977_exprs <- read.table("../eth_quants_by_OG/OG0006977_exp.txt")
OG0003596_exprs <- read.table("../eth_quants_by_OG/OG0003596_exp.txt")


write.table(OG0011700_exprs, "../eth_quants_by_OG/OG0011700_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0003776_exprs, "../eth_quants_by_OG/OG0003776_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0003879_exprs, "../eth_quants_by_OG/OG0003879_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0001838_exprs, "../eth_quants_by_OG/OG0001838_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0018870_exprs, "../eth_quants_by_OG/OG0018870_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0001516_exprs, "../eth_quants_by_OG/OG0001516_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0002845_exprs, "../eth_quants_by_OG/OG0002845_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0001017_exprs, "../eth_quants_by_OG/OG0001017_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0019583_exprs, "../eth_quants_by_OG/OG0019583_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0005313_exprs, "../eth_quants_by_OG/OG0005313_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0002899_exprs, "../eth_quants_by_OG/OG0002899_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0012495_exprs, "../eth_quants_by_OG/OG0012495_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0002376_exprs, "../eth_quants_by_OG/OG0002376_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0001823_exprs, "../eth_quants_by_OG/OG0001823_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0006977_exprs, "../eth_quants_by_OG/OG0006977_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)
write.table(OG0003596_exprs, "../eth_quants_by_OG/OG0003596_exp.txt", col.names=FALSE, row.names=FALSE, quote=FALSE)



OG0002845_exprs[97,3] <- (OG0002845_exprs[97,3] + OG0002845_exprs[98,3])/2
OG0002845_exprs[97,4] <- (OG0002845_exprs[97,4] + OG0002845_exprs[98,4])/2
OG0002845_exprs[93,3] <- (OG0002845_exprs[93,3] + OG0002845_exprs[94,3] + OG0002845_exprs[95,3] + OG0002845_exprs[96,3]) /4
OG0002845_exprs[93,4] <- (OG0002845_exprs[93,4] + OG0002845_exprs[94,4] + OG0002845_exprs[95,4] + OG0002845_exprs[96,4]) /4
OG0002845_exprs[91,3] <- (OG0002845_exprs[91,3] + OG0002845_exprs[92,3]) / 2
OG0002845_exprs[91,4] <- (OG0002845_exprs[91,4] + OG0002845_exprs[92,4]) / 2
OG0002845_exprs[89,3] <- (OG0002845_exprs[89,3] + OG0002845_exprs[90,3]) / 2
OG0002845_exprs[89,4] <- (OG0002845_exprs[89,4] + OG0002845_exprs[90,4]) / 2
OG0002845_exprs[84,3] <- (OG0002845_exprs[84,3] + OG0002845_exprs[85,3]) / 2
OG0002845_exprs[84,4] <- (OG0002845_exprs[84,4] + OG0002845_exprs[85,4]) / 2
OG0002845_exprs[80,3] <- (OG0002845_exprs[80,3] + OG0002845_exprs[81,3] + OG0002845_exprs[82,3]) /3
OG0002845_exprs[80,4] <- (OG0002845_exprs[80,4] + OG0002845_exprs[81,4] + OG0002845_exprs[82,4]) /3
 OG0002845_exprs[77,3] <- (OG0002845_exprs[77,3] + OG0002845_exprs[78,3]) / 2
OG0002845_exprs[77,4] <- (OG0002845_exprs[77,4] + OG0002845_exprs[78,4]) / 2
OG0002845_exprs[71,4] <- (OG0002845_exprs[71,4] + OG0002845_exprs[72,4] + OG0002845_exprs[73,4] + OG0002845_exprs[74,4] + OG0002845_exprs[75,4] + OG0002845_exprs[76,4]) / 6
OG0002845_exprs[71,3] <- (OG0002845_exprs[71,3] + OG0002845_exprs[72,3] + OG0002845_exprs[73,3] + OG0002845_exprs[74,3] + OG0002845_exprs[75,3] + OG0002845_exprs[76,3]) / 6
OG0002845_exprs[66,3] <- (OG0002845_exprs[66,3] + OG0002845_exprs[67,3] + OG0002845_exprs[68,3] + OG0002845_exprs[69,3] ) / 4
OG0002845_exprs[66,4] <- (OG0002845_exprs[66,4] + OG0002845_exprs[67,4] + OG0002845_exprs[68,4] + OG0002845_exprs[69,4] ) / 4
OG0002845_exprs[61,3] <- (OG0002845_exprs[61,3] + OG0002845_exprs[62,3] + OG0002845_exprs[63,3] + OG0002845_exprs[64,3] + OG0002845_exprs[65,3]) / 5
OG0002845_exprs[61,4] <- (OG0002845_exprs[61,4] + OG0002845_exprs[62,4] + OG0002845_exprs[63,4] + OG0002845_exprs[64,4] + OG0002845_exprs[65,4] ) / 5
OG0002845_exprs[57,3] <- (OG0002845_exprs[57,3] + OG0002845_exprs[58,3] + OG0002845_exprs[59,3] + OG0002845_exprs[60,3] ) / 4
OG0002845_exprs[57,4] <- (OG0002845_exprs[57,4] + OG0002845_exprs[58,4] + OG0002845_exprs[59,4] + OG0002845_exprs[60,4] ) / 4
OG0002845_exprs[52,3] <- (OG0002845_exprs[52,3] + OG0002845_exprs[53,3])/2
OG0002845_exprs[52,4] <- (OG0002845_exprs[52,4] + OG0002845_exprs[53,4])/2
OG0002845_exprs[49,3] <- (OG0002845_exprs[49,3] + OG0002845_exprs[50,3])/2
OG0002845_exprs[49,4] <- (OG0002845_exprs[49,4] + OG0002845_exprs[50,4])/2
OG0002845_exprs[47,3] <- (OG0002845_exprs[47,3] + OG0002845_exprs[48,3])/2
OG0002845_exprs[47,4] <- (OG0002845_exprs[47,4] + OG0002845_exprs[48,4])/2
OG0002845_exprs[43,3] <- (OG0002845_exprs[43,3] + OG0002845_exprs[44,3])/2
OG0002845_exprs[43,4] <- (OG0002845_exprs[43,4] + OG0002845_exprs[44,4])/2
OG0002845_exprs[40,3] <- (OG0002845_exprs[40,3] + OG0002845_exprs[41,3])/2
OG0002845_exprs[40,4] <- (OG0002845_exprs[40,4] + OG0002845_exprs[41,4])/2
OG0002845_exprs[36,3] <- (OG0002845_exprs[36,3] + OG0002845_exprs[37,3] + OG0002845_exprs[38,3] + OG0002845_exprs[39,3] ) / 4
OG0002845_exprs[36,4] <- (OG0002845_exprs[36,4] + OG0002845_exprs[37,4] + OG0002845_exprs[38,4] + OG0002845_exprs[39,4] ) / 4
OG0002845_exprs[31,3] <- (OG0002845_exprs[31,3] + OG0002845_exprs[32,3])/2
OG0002845_exprs[31,4] <- (OG0002845_exprs[31,4] + OG0002845_exprs[32,4])/2
OG0002845_exprs[21,3] <- (OG0002845_exprs[21,3] + OG0002845_exprs[22,3] + OG0002845_exprs[26,3]) /3
OG0002845_exprs[21,4] <- (OG0002845_exprs[21,4] + OG0002845_exprs[22,4] + OG0002845_exprs[26,4]) /3
OG0002845_exprs[23,3] <- (OG0002845_exprs[23,3] + OG0002845_exprs[24,3] + OG0002845_exprs[25,3]) /3
OG0002845_exprs[23,4] <- (OG0002845_exprs[23,4] + OG0002845_exprs[24,4] + OG0002845_exprs[25,4]) /3
OG0002845_exprs[4,3] <- (OG0002845_exprs[4,3] + OG0002845_exprs[5,3])/2
OG0002845_exprs[4,4] <- (OG0002845_exprs[4,4] + OG0002845_exprs[5,4])/2

rows_to_remove <- c(5,15,22,24,25,26,32,37,38,39,41,44,48,50,53,58,59,60,62,63,64,65,67,68,69,72,73,74,75,76,78,81,82,85,90,92,94,95,96,98)

OG0002845_exprs <- OG0002845_exprs[-rows_to_remove,]


OG0001838_exprs[125,3] <- (OG0001838_exprs[125,3] + OG0001838_exprs[126,3])/2
OG0001838_exprs[125,4] <- (OG0001838_exprs[125,4] + OG0001838_exprs[126,4])/2
OG0001838_exprs[113,3] <- (OG0001838_exprs[113,3] + OG0001838_exprs[114,3] + OG0001838_exprs[115,3])/3
OG0001838_exprs[113,4] <- (OG0001838_exprs[113,4] + OG0001838_exprs[114,4] + OG0001838_exprs[115,4])/3
OG0001838_exprs[107,3] <- (OG0001838_exprs[107,3] + OG0001838_exprs[112,3])/2
OG0001838_exprs[107,4] <- (OG0001838_exprs[107,4] + OG0001838_exprs[112,4])/2
OG0001838_exprs[102,3] <- (OG0001838_exprs[102,3] + OG0001838_exprs[103,3])/2
OG0001838_exprs[102,4] <- (OG0001838_exprs[102,4] + OG0001838_exprs[103,4])/2
OG0001838_exprs[96,3] <- (OG0001838_exprs[96,3] + OG0001838_exprs[97,3])/2
OG0001838_exprs[96,4] <- (OG0001838_exprs[96,4] + OG0001838_exprs[97,4])/2
OG0001838_exprs[87,3] <- (OG0001838_exprs[87,3] + OG0001838_exprs[88,3])/2
OG0001838_exprs[87,4] <- (OG0001838_exprs[87,4] + OG0001838_exprs[88,4])/2
OG0001838_exprs[63,3] <- (OG0001838_exprs[63,3] + OG0001838_exprs[65,3])/2
OG0001838_exprs[63,4] <- (OG0001838_exprs[63,4] + OG0001838_exprs[65,4])/2
OG0001838_exprs[61,3] <- (OG0001838_exprs[61,3] + OG0001838_exprs[62,3])/2
OG0001838_exprs[61,4] <- (OG0001838_exprs[61,4] + OG0001838_exprs[62,4])/2
OG0001838_exprs[54,3] <- (OG0001838_exprs[54,3] + OG0001838_exprs[55,3])/2
OG0001838_exprs[54,4] <- (OG0001838_exprs[54,4] + OG0001838_exprs[55,4])/2
OG0001838_exprs[51,3] <- (OG0001838_exprs[51,3] + OG0001838_exprs[52,3])/2
OG0001838_exprs[51,4] <- (OG0001838_exprs[51,4] + OG0001838_exprs[52,4])/2
OG0001838_exprs[41,3] <- (OG0001838_exprs[41,3] + OG0001838_exprs[42,3])/2
OG0001838_exprs[41,4] <- (OG0001838_exprs[41,4] + OG0001838_exprs[42,4])/2
OG0001838_exprs[30,3] <- (OG0001838_exprs[30,3] + OG0001838_exprs[32,3])/2
OG0001838_exprs[30,4] <- (OG0001838_exprs[30,4] + OG0001838_exprs[32,4])/2
OG0001838_exprs[8,3] <- (OG0001838_exprs[8,3] + OG0001838_exprs[9,3])/2
OG0001838_exprs[8,4] <- (OG0001838_exprs[8,4] + OG0001838_exprs[9,4])/2
OG0001838_exprs[5,3] <- (OG0001838_exprs[5,3] + OG0001838_exprs[7,3])/2
OG0001838_exprs[5,4] <- (OG0001838_exprs[5,4] + OG0001838_exprs[7,4])/2

rows_to_remove <- c(7,9,31,32,42,47,52,55,62,64,65,88,97,103,112,114,115,126)

OG0001838_exprs <- OG0001838_exprs[-rows_to_remove,]


OG0001516_exprs[133,3] <- (OG0001516_exprs[133,3] + OG0001516_exprs[134,3] + OG0001516_exprs[135,3] + OG0001516_exprs[136,3])/4
OG0001516_exprs[133,4] <- (OG0001516_exprs[133,4] + OG0001516_exprs[134,4] + OG0001516_exprs[135,4] + OG0001516_exprs[136,4])/4
OG0001516_exprs[132,3] <- (OG0001516_exprs[132,3] + OG0001516_exprs[137,3] + OG0001516_exprs[138,3])/3
OG0001516_exprs[132,4] <- (OG0001516_exprs[132,4] + OG0001516_exprs[137,4] + OG0001516_exprs[138,4])/3
OG0001516_exprs[128,3] <- (OG0001516_exprs[128,3] + OG0001516_exprs[131,3])/2
OG0001516_exprs[128,4] <- (OG0001516_exprs[128,4] + OG0001516_exprs[131,4])/2
OG0001516_exprs[124,3] <- (OG0001516_exprs[124,3] + OG0001516_exprs[125,3] + OG0001516_exprs[126,3])/3
OG0001516_exprs[124,4] <- (OG0001516_exprs[124,4] + OG0001516_exprs[125,4] + OG0001516_exprs[126,4])/3
OG0001516_exprs[116,3] <- (OG0001516_exprs[116,3] + OG0001516_exprs[117,3] + OG0001516_exprs[118,3])/3
OG0001516_exprs[116,4] <- (OG0001516_exprs[116,4] + OG0001516_exprs[117,4] + OG0001516_exprs[118,4])/3
OG0001516_exprs[85,3] <- (OG0001516_exprs[85,3] + OG0001516_exprs[88,3])/2
OG0001516_exprs[85,4] <- (OG0001516_exprs[85,4] + OG0001516_exprs[88,4])/2
OG0001516_exprs[81,3] <- (OG0001516_exprs[81,3] + OG0001516_exprs[82,3])/2
OG0001516_exprs[81,4] <- (OG0001516_exprs[81,4] + OG0001516_exprs[82,4])/2
OG0001516_exprs[45,3] <- (OG0001516_exprs[45,3] + OG0001516_exprs[47,3])/2
OG0001516_exprs[45,4] <- (OG0001516_exprs[45,4] + OG0001516_exprs[47,4])/2
OG0001516_exprs[38,3] <- (OG0001516_exprs[38,3] + OG0001516_exprs[39,3] + OG0001516_exprs[40,3])/3
OG0001516_exprs[38,4] <- (OG0001516_exprs[38,4] + OG0001516_exprs[39,4] + OG0001516_exprs[40,4])/3
OG0001516_exprs[33,3] <- (OG0001516_exprs[33,3] + OG0001516_exprs[34,3] + OG0001516_exprs[35,3])/3
OG0001516_exprs[33,4] <- (OG0001516_exprs[33,4] + OG0001516_exprs[34,4] + OG0001516_exprs[35,4])/3
OG0001516_exprs[28,3] <- (OG0001516_exprs[28,3] + OG0001516_exprs[29,3] + OG0001516_exprs[31,3])/3
OG0001516_exprs[28,4] <- (OG0001516_exprs[28,4] + OG0001516_exprs[29,4] + OG0001516_exprs[31,4])/3
OG0001516_exprs[13,3] <- (OG0001516_exprs[13,3] + OG0001516_exprs[14,3] + OG0001516_exprs[15,3])/3
OG0001516_exprs[13,4] <- (OG0001516_exprs[13,4] + OG0001516_exprs[14,4] + OG0001516_exdprs[15,4])/3
OG0001516_exprs[7,3] <- (OG0001516_exprs[7,3] + OG0001516_exprs[8,3])/2
OG0001516_exprs[7,4] <- (OG0001516_exprs[7,4] + OG0001516_exprs[8,4])/2
OG0001516_exprs[5,3] <- (OG0001516_exprs[5,3] + OG0001516_exprs[6,3])/2
OG0001516_exprs[5,4] <- (OG0001516_exprs[5,4] + OG0001516_exprs[6,4])/2
OG0001516_exprs[3,3] <- (OG0001516_exprs[3,3] + OG0001516_exprs[4,3])/2
OG0001516_exprs[3,4] <- (OG0001516_exprs[3,4] + OG0001516_exprs[4,4])/2


rows_to_remove <- c(4,6,8,14,15,29,31,34,35,39,40,47,82,86,88,89,90,91,92,93,96,117,118,125,126,121,134,135,136,137,138)


OG0001017_exprs[164,3] <- (OG0001017_exprs[164,3] + OG0001017_exprs[166,3])/2
OG0001017_exprs[164,4] <- (OG0001017_exprs[164,4] + OG0001017_exprs[166,4])/2
OG0001017_exprs[163,3] <- (OG0001017_exprs[163,3] + OG0001017_exprs[165,3])/2
OG0001017_exprs[163,4] <- (OG0001017_exprs[163,4] + OG0001017_exprs[165,4])/2
OG0001017_exprs[159,3] <- (OG0001017_exprs[159,3] + OG0001017_exprs[160,3])/2
OG0001017_exprs[159,4] <- (OG0001017_exprs[159,4] + OG0001017_exprs[160,4])/2
OG0001017_exprs[145,3] <- (OG0001017_exprs[145,3] + OG0001017_exprs[146,3])/2
OG0001017_exprs[145,4] <- (OG0001017_exprs[145,4] + OG0001017_exprs[146,4])/2
OG0001017_exprs[133,3] <- (OG0001017_exprs[133,3] + OG0001017_exprs[134,3])/2
OG0001017_exprs[133,4] <- (OG0001017_exprs[133,4] + OG0001017_exprs[134,4])/2
OG0001017_exprs[132,3] <- (OG0001017_exprs[132,3] + OG0001017_exprs[137,3] + OG0001017_exprs[138,3])/3
OG0001017_exprs[132,4] <- (OG0001017_exprs[132,4] + OG0001017_exprs[137,4] + OG0001017_exprs[138,4])/3
OG0001017_exprs[124,3] <- (OG0001017_exprs[124,3] + OG0001017_exprs[125,3] + OG0001017_exprs[126,3])/3
OG0001017_exprs[124,4] <- (OG0001017_exprs[124,4] + OG0001017_exprs[125,4] + OG0001017_exprs[126,4])/3
OG0001017_exprs[122,3] <- (OG0001017_exprs[122,3] + OG0001017_exprs[123,3])/2
OG0001017_exprs[122,4] <- (OG0001017_exprs[122,4] + OG0001017_exprs[123,4])/2
OG0001017_exprs[112,3] <- (OG0001017_exprs[112,3] + OG0001017_exprs[113,3])/2
OG0001017_exprs[112,4] <- (OG0001017_exprs[112,4] + OG0001017_exprs[113,4])/2
OG0001017_exprs[115,3] <- (OG0001017_exprs[115,3] + OG0001017_exprs[116,3])/2
OG0001017_exprs[115,4] <- (OG0001017_exprs[115,4] + OG0001017_exprs[116,4])/2
OG0001017_exprs[107,3] <- (OG0001017_exprs[107,3] + OG0001017_exprs[108,3] + OG0001017_exprs[109,3])/3
OG0001017_exprs[107,4] <- (OG0001017_exprs[107,4] + OG0001017_exprs[108,4] + OG0001017_exprs[109,4])/3
OG0001017_exprs[105,3] <- (OG0001017_exprs[105,3] + OG0001017_exprs[106,3])/2
OG0001017_exprs[105,4] <- (OG0001017_exprs[105,4] + OG0001017_exprs[106,4])/2
OG0001017_exprs[93,3] <- (OG0001017_exprs[93,3] + OG0001017_exprs[94,3])/2
OG0001017_exprs[93,4] <- (OG0001017_exprs[93,4] + OG0001017_exprs[94,4])/2
OG0001017_exprs[90,3] <- (OG0001017_exprs[90,3] + OG0001017_exprs[91,3])/2
OG0001017_exprs[90,4] <- (OG0001017_exprs[90,4] + OG0001017_exprs[91,4])/2
OG0001017_exprs[92,3] <- (OG0001017_exprs[92,3] + OG0001017_exprs[99,3])/2
OG0001017_exprs[92,4] <- (OG0001017_exprs[92,4] + OG0001017_exprs[99,4])/2
OG0001017_exprs[95,3] <- (OG0001017_exprs[95,3] + OG0001017_exprs[96,3])/2
OG0001017_exprs[95,4] <- (OG0001017_exprs[95,4] + OG0001017_exprs[96,4])/2
OG0001017_exprs[97,3] <- (OG0001017_exprs[97,3] + OG0001017_exprs[98,3])/2
OG0001017_exprs[97,4] <- (OG0001017_exprs[97,4] + OG0001017_exprs[98,4])/2
OG0001017_exprs[84,3] <- (OG0001017_exprs[84,3] + OG0001017_exprs[85,3] + OG0001017_exprs[86,3])/3
OG0001017_exprs[84,4] <- (OG0001017_exprs[84,4] + OG0001017_exprs[85,4] + OG0001017_exprs[86,4])/3
OG0001017_exprs[75,3] <- (OG0001017_exprs[75,3] + OG0001017_exprs[76,3])/2
OG0001017_exprs[75,4] <- (OG0001017_exprs[75,4] + OG0001017_exprs[76,4])/2
OG0001017_exprs[61,3] <- (OG0001017_exprs[61,3] + OG0001017_exprs[63,3] + OG0001017_exprs[64,3])/3
OG0001017_exprs[61,4] <- (OG0001017_exprs[61,4] + OG0001017_exprs[63,4] + OG0001017_exprs[64,4])/3
OG0001017_exprs[55,3] <- (OG0001017_exprs[55,3] + OG0001017_exprs[56,3])/2
OG0001017_exprs[55,4] <- (OG0001017_exprs[55,4] + OG0001017_exprs[56,4])/2
OG0001017_exprs[51,3] <- (OG0001017_exprs[51,3] + OG0001017_exprs[52,3])/2
OG0001017_exprs[51,4] <- (OG0001017_exprs[51,4] + OG0001017_exprs[52,4])/2
OG0001017_exprs[49,3] <- (OG0001017_exprs[49,3] + OG0001017_exprs[50,3])/2
OG0001017_exprs[49,4] <- (OG0001017_exprs[49,4] + OG0001017_exprs[50,4])/2
OG0001017_exprs[46,3] <- (OG0001017_exprs[46,3] + OG0001017_exprs[47,3] + OG0001017_exprs[48,3])/3
OG0001017_exprs[46,4] <- (OG0001017_exprs[46,4] + OG0001017_exprs[47,4] + OG0001017_exprs[48,4])/3
OG0001017_exprs[43,3] <- (OG0001017_exprs[43,3] + OG0001017_exprs[44,3] + OG0001017_exprs[45,3])/3
OG0001017_exprs[43,4] <- (OG0001017_exprs[43,4] + OG0001017_exprs[44,4] + OG0001017_exprs[45,4])/3
OG0001017_exprs[35,3] <- (OG0001017_exprs[35,3] + OG0001017_exprs[36,3])/2
OG0001017_exprs[35,4] <- (OG0001017_exprs[35,4] + OG0001017_exprs[36,4])/2
OG0001017_exprs[19,3] <- (OG0001017_exprs[19,3] + OG0001017_exprs[22,3] + OG0001017_exprs[25,3] + OG0001017_exprs[26,3] + OG0001017_exprs[27,3] + OG0001017_exprs[28,3] + OG0001017_exprs[29,3] + OG0001017_exprs[30,3] + OG0001017_exprs[32,3] + OG0001017_exprs[33,3] + OG0001017_exprs[34,3])/11
OG0001017_exprs[19,4] <- (OG0001017_exprs[19,4] + OG0001017_exprs[22,4] + OG0001017_exprs[25,4] + OG0001017_exprs[26,4] + OG0001017_exprs[27,4] + OG0001017_exprs[28,4] + OG0001017_exprs[29,4] + OG0001017_exprs[30,4] + OG0001017_exprs[32,4] + OG0001017_exprs[33,4] + OG0001017_exprs[34,4])/11
OG0001017_exprs[13,3] <- (OG0001017_exprs[13,3] + OG0001017_exprs[14,3] + OG0001017_exprs[15,3] + OG0001017_exprs[16,3])/4
OG0001017_exprs[13,4] <- (OG0001017_exprs[13,4] + OG0001017_exprs[14,4] + OG0001017_exprs[15,4] + OG0001017_exprs[16,4])/4
OG0001017_exprs[10,3] <- (OG0001017_exprs[10,3] + OG0001017_exprs[11,3] + OG0001017_exprs[12,3])/3
OG0001017_exprs[10,4] <- (OG0001017_exprs[10,4] + OG0001017_exprs[11,4] + OG0001017_exprs[12,4])/3
OG0001017_exprs[7,3] <- (OG0001017_exprs[7,3] + OG0001017_exprs[8,3])/2
OG0001017_exprs[7,4] <- (OG0001017_exprs[7,4] + OG0001017_exprs[8,4])/2

rows_to_remove <- c(8,11,12,14,15,16,18,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,44,45,47,48,50,52,56,63,64,76,78,85,86,88,91,94,96,98,99,106,108,113,116,123,125,126,127,131,134,136,137,138,140,146,160,165,166)


OG0003776_exprs[1,3] <- (OG0003776_exprs[1,3] + OG0003776_exprs[3,3]) / 2
OG0003776_exprs[1,4] <- (OG0003776_exprs[1,4] + OG0003776_exprs[3,4]) / 2
OG0003776_exprs[8,3] <- (OG0003776_exprs[8,3] + OG0003776_exprs[9,3]) / 2
OG0003776_exprs[8,4] <- (OG0003776_exprs[8,4] + OG0003776_exprs[9,4]) / 2
OG0003776_exprs[11,3] <- (OG0003776_exprs[11,3] + OG0003776_exprs[12,3] + OG0003776_exprs[13,3]) / 3
OG0003776_exprs[11,4] <- (OG0003776_exprs[11,4] + OG0003776_exprs[12,4] + OG0003776_exprs[13,4]) / 3
OG0003776_exprs[17,3] <- (OG0003776_exprs[17,3] + OG0003776_exprs[18,3]) / 2
OG0003776_exprs[17,4] <- (OG0003776_exprs[17,4] + OG0003776_exprs[18,4]) / 2
OG0003776_exprs[31,3] <- (OG0003776_exprs[31,3] + OG0003776_exprs[32,3]) / 2
OG0003776_exprs[31,4] <- (OG0003776_exprs[31,4] + OG0003776_exprs[32,4]) / 2
OG0003776_exprs[24,3] <- (OG0003776_exprs[24,3] + OG0003776_exprs[25,3] + OG0003776_exprs[26,3] + OG0003776_exprs[27,3] + OG0003776_exprs[28,3] + OG0003776_exprs[29,3] + OG0003776_exprs[33,3] + OG0003776_exprs[34,3]) / 8
OG0003776_exprs[24,4] <- (OG0003776_exprs[24,4] + OG0003776_exprs[25,4] + OG0003776_exprs[26,4] + OG0003776_exprs[27,4] + OG0003776_exprs[28,4] + OG0003776_exprs[29,4] + OG0003776_exprs[33,4] + OG0003776_exprs[34,4] )/ 8
OG0003776_exprs[44,3] <- (OG0003776_exprs[44,3] + OG0003776_exprs[45,3]) / 2
OG0003776_exprs[44,4] <- (OG0003776_exprs[44,4] + OG0003776_exprs[45,4]) / 2
OG0003776_exprs[54,3] <- (OG0003776_exprs[54,3] + OG0003776_exprs[55,3]) / 2
OG0003776_exprs[54,4] <- (OG0003776_exprs[54,4] + OG0003776_exprs[55,4]) / 2
OG0003776_exprs[58,3] <- (OG0003776_exprs[58,3] + OG0003776_exprs[61,3]) / 2
OG0003776_exprs[58,4] <- (OG0003776_exprs[58,4] + OG0003776_exprs[61,4]) / 2
OG0003776_exprs[65,3] <- (OG0003776_exprs[65,3] + OG0003776_exprs[66,3]) / 2
OG0003776_exprs[65,4] <- (OG0003776_exprs[65,4] + OG0003776_exprs[66,4]) / 2
OG0003776_exprs[81,3] <- (OG0003776_exprs[81,3] + OG0003776_exprs[82,3] + OG0003776_exprs[83,3]) / 3
OG0003776_exprs[81,4] <- (OG0003776_exprs[81,4] + OG0003776_exprs[82,4] + OG0003776_exprs[83,4]) / 3

rows_to_remove <- c(2,3,9,12,13,18,25,26,27,28,29,32,33,34,36,37,45,55,61,66,82,83)