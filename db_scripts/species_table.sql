/*
* Table with data on the species included in this analysis
*/

CREATE TABLE plantDB.species_table(
    species_name CHAR(150) PRIMARY KEY NOT NULL,
    ploidy INT,
    genome_size CHAR(15),
    genome_loc CHAR(150),
    genome_gff CHAR(150),

)

