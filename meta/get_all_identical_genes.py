#!/bin/python

import os
import glob
from Bio import SeqIO
from Bio.Seq import Seq
from Bio.SeqRecord import SeqRecord
from Bio.Alphabet import IUPAC
from collections import defaultdict

seq_dir = "/gpfs/projects/RestGroup/keffy/scratch/mafft_alignments/"

filenames = glob.glob(seq_dir + "*us_trim_auto.fa")

def check_if_identical_exists(fasta):
    with open(fasta) as fn:
        seqio_dict = SeqIO.to_dict(SeqIO.parse(fasta,"fasta"))
    seqs_dict = { k : seqio_dict[k].seq for k in seqio_dict }
    return len(seqs_dict.values()) > len(list(set(list(seqs_dict.values()))))

def get_identical():
    # return seq 


    

