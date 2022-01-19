/*
* Creates tables in PlantDB
*/


.mode csv

.import meta/SRR_for_sqlite.csv SRR_metadata
DELETE FROM SRR_metadata WHERE SRR = 'SRR';

.import database/orthogroups_protein_nosp.csv orthogroups_proteins_no_species
.import database/orthogroups_protein.csv orthogroups_protein




