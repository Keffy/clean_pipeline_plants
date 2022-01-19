/*
* Table with the protein accession numbers and the orthogroups.
*/

DROP TABLE [IF EXISTS] plantDB.og_protein_table;

CREATE TABLE plantDB.og_protein_table(
    orthogroup CHAR(150) PRIMARY KEY NOT NULL,
    protein CHAR(150),
)