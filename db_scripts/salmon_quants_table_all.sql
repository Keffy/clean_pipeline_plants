/*
* Salmon quants SRA to GSM (?)
*/

CREATE TABLE plantDB.rna_prot_acc_table(
    protein CHAR(150) PRIMARY KEY NOT NULL,
    rna CHAR(150) NOT NULL,
    species CHAR(150) NOT NULL,
    orthogroup CHAR(150) NOT NULL,
)
