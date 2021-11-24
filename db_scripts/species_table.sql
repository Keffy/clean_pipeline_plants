/*
* Table with data on the species included in this analysis
*/

CREATE TABLE plantDB.species_table(
    species_name CHAR(150) PRIMARY KEY NOT NULL,
    ploidy INT NOT NULL,
    genome_size CHAR(15) NOT NULL,
    genome_loc CHAR(150) NOT NULL,
    genome_gff CHAR(150) NOT NULL,
    
)