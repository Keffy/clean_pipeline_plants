#!/bin/python

import csv
import sqlite3

db_fname = "database/plantDB.db"

with open("meta/species.txt", "r") as file:
    all_species = file.read().splitlines()

def get_colnames(csv_fn):
    with open(csv_fn,'r') as fn:
        first_line = fn.readline().strip()
    return first_line


def add_table(csv_fn,tb_name,db_fn):
    col_names = get_colnames(csv_fn)
    col_name_lst = col_names.split(',')
    con = sqlite3.connect(db_fn)
    cur = con.cursor()
    cur.execute("CREATE TABLE IF NOT EXISTS " + tb_name + '(' + col_names + ');')
    with open(csv_fn,'r') as csv_file:
        csv_dict = csv.DictReader(csv_file)
        to_db = [([i[col] for col in col_name_lst]) for i in csv_dict]
    cur.executemany("INSERT INTO " + tb_name + "(" + col_names + ") VALUES (?, ?);", to_db)
    con.commit()
    con.close()


## read in all csv files for the species

for sp in all_species:
    sp_csv_name = "database/no_sp/" + sp + "_rna_lookup.csv"
    sp_table_name = sp + "_rna_protein"
    db_name = "database/plantDB.db"
    add_table(sp_csv_name,sp_table_name,db_name)


## read in csv files for sp with sp in the acc numbers

for sp in all_species:
    sp_csv_name = "database/w_sp/" + sp + "_rna_lookup_sp.csv"
    sp_table_name = sp + "_rna_protein_wsp"
    db_name = "database/plantDB.db"
    add_table(sp_csv_name,sp_table_name,db_name)

### read in the SRR metadata table

add_table("meta/SRR_for_sqlite.csv","SRR_metadata","database/plantDB.db") # throws error

