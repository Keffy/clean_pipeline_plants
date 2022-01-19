#!/bin/python

from subprocess import check_output
from multiprocessing import Pool



gff_dir = "/gpfs/projects/RestGroup/keffy/scratch/gffs/"
meta_dir = "/gpfs/projects/RestGroup/keffy/clean_pipeline_plants/meta/"
orthofinder_dir = "/gpfs/projects/RestGroup/keffy/scratch/orthofinder_fasttree_2/Results_Dec25/"
db_dir = "/gpfs/projects/RestGroup/keffy/scratch/rna_prot_lookup/w_sp_py/"


og_file = meta_dir + "Sp_Orthogroups.txt"

with open(meta_dir + "OGs_all_sp.txt", 'r') as f:
    ogs = f.read().splitlines()


# run code

# for og in ogs:
#     get_proteins = subprocess.call(['grep', og, og_file])
#     prot_only = get_proteins[11:].split()
#     output_lines = ""
#     for prot in prot_only:
#         sp = prot.split('-')[0]
#         acc = prot.split('-')[1]
#         gff_file = gff_dir + sp + "_genomic.gff"
#         get_rna = subprocess.call(['grep', acc gff_file])
#         rna = get_rna.split('Parent=rna-')[1]
#         rna = rna.split(';'))[0]
#         output_lines.append(prot + ", " + sp + "-" + rna)
#     with open(db_dir + og + 'rna_lookup.csv', 'w') as outf:
#         outf.write('\n'.join(output_lines))
        

def greppin(og):
    #get_proteins = subprocess.call(['grep', og, og_file])
    get_proteins = check_output(["grep", "%s"%og, "Sp_Orthogroups.txt"])
    get_proteins = get_proteins.decode("utf-8")
    prot_only = get_proteins[11:].split()
    output_lines = []
    for prot in prot_only:
        sp = prot.split('-')[0]
        acc = prot.split('-')[1]
        gff_file = gff_dir + sp + "_genomic.gff"
        get_rna = check_output(['grep', acc, gff_file])
        get_rna = get_rna.decode("utf-8")
        rna = get_rna.split('Parent=rna-')[1]
        rna = rna.split(';')[0]
        output_lines.append(prot + ", " + sp + "-" + rna)
    with open(db_dir + og + 'rna_lookup.csv', 'w') as outf:
        outf.write('\n'.join(output_lines))


if __name__ == '__main__':
    pool = Pool()
    pool.map(greppin, ogs)
    pool.close()
    pool.join()