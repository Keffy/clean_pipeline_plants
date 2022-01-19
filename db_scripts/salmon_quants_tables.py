#!/bin/python

import csv
import sqlite3

lookup_conn = sqlite3.connect('database/plantDB.db')
c = lookup_conn.cursor()

list_srr = c.execute('SELECT SRR FROM SRR_metadata').fetchall()
list_srr = [tup[0] for tup in list_srr]

for srr in list_srr:
    sp = c.execute('SELECT Species FROM SRR_metadata WHERE SRR=:currentSRR", {"currentSRR": srr}).fetchone()[0]
    file_name = "/gpfs/projects/RestGroup/keffy/scratch/salmon_quants/" + sp + "/" + srr + "_transcripts_quant/quant.sf"