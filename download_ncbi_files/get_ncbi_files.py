#!/bin/python

### Use Entrez utilities through Biopython to get
### the RefSeq genome and proteome urls and download the files.

import argparse
import wget
from Bio import Entrez
from time import sleep


### Functions! Functions! Functions!
### Get ncbi url

def get_ncbi_ftp_path(orgn):
    handle1 = Entrez.esearch(db="genome",term=orgn)
    sleep(0.1)
    records = Entrez.read(handle1)
    sp_id = records['IdList']
    handle2 = Entrez.esummary(db="genome",id=sp_id,retmax="100")
    sleep(0.1)
    records2 = Entrez.read(handle2)
    accession = records2[0]["Assembly_Accession"]
    handle3 = Entrez.esearch(db="assembly", term=accession, retmax="100")
    sleep(0.1)
    records3 = Entrez.read(handle3)
    assembly_id = records3['IdList']
    if (len(assembly_id) > 1):
        full_summaries = []
        for id in assembly_id:
            handle = Entrez.esummary(db="assembly",id=id, report="full")
            record = Entrez.read(handle)
            full_summaries.append(record)
        dates = [summary['DocumentSummarySet']['DocumentSummary'][0]['AsmReleaseDate_RefSeq'] for summary in full_summaries]
        assembly_id = assembly_id[dates.index(max(dates))]
    handle4 = Entrez.esummary(db="assembly",id=assembly_id, report="full")
    sleep(0.1)
    summary = Entrez.read(handle4)
    ftp_path = summary['DocumentSummarySet']['DocumentSummary'][0]['FtpPath_RefSeq']
    #assembly_acc = summary['DocumentSummarySet']['DocumentSummary'][0]['AssemblyAccession']
    handle1.close()
    handle2.close()
    handle3.close()
    handle4.close()
    sleep(1)
    #return(ftp_path,assembly_acc)
    return(ftp_path)


def download_refseq(ftp_path, out_dir, species_lst):
    for ftp in ftp_path:
        current_sp = species_lst[ftp_path.index(ftp)]
        current_sp = current_sp.replace(" ", "_")
        genome_ftp = ftp + "/" + ftp.split("/")[-1] + "_genomic.fna.gz"
        protein_ftp = ftp + "/" + ftp.split("/")[-1] + "_protein.faa.gz"
        gff_ftp = ftp + "/" + ftp.split("/")[-1] + "_genomic.gff.gz"
        #get output filename
        genome_outfile = out_dir + "/" + current_sp + "_genomic.fna.gz"
        protein_outfile = out_dir + "/" + current_sp + "_protein.faa.gz"
        gff_outfile = out_dir + "/" + current_sp + "_genomic.gff.gz"
        wget.download(genome_ftp, genome_outfile)
        wget.download(protein_ftp, protein_outfile)
        wget.download(gff_ftp, gff_outfile)


### parse passed email argument

parser = argparse.ArgumentParser()
parser.add_argument("--email", help="You need to set your email address for NCBI.", required=True)
parser.add_argument("--api_key", help="Supply an API key to NCBI for more requests per second.")
parser.add_argument("--out_dir", help="Supply an output directory for file downloads.")
arg_dict = vars(parser.parse_args())
Entrez.email = arg_dict['email']
Entrez.api_key = arg_dict['api_key']
output_dir = arg_dict['out_dir']

### calls
### Species list:

with open("clean_pipeline_plants/meta/species_no_us.txt", "r") as fn:
    species = fn.read().splitlines()


#ftp_accession_list = list(zip(*[get_ncbi_ftp_path(sp) for sp in species]))
ftp_urls = [get_ncbi_ftp_path(sp) for sp in species]

# download the actual files using wget in function 
# declared above.

download_refseq(ftp_urls, output_dir, species)