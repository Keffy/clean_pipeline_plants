# Clean Pipeline for Plant Analysis

SQLite used for the database.

## Downloading NCBI genomes

get_ncbi_files.py uses Biopython to query NCBI by species name and download the files.

You will need to supply your email and NCBI API key (see https://www.ncbi.nlm.nih.gov/home/develop/api/)

You will also need to supply the preferred download directory for the genome files.

## Ortholog calling

Ortholog calling with OrthoFinder.

### Alignments with Mafft:

MAFFT v7.149b (2014/04/04)
  http://mafft.cbrc.jp/alignment/software/
  MBE 30:772-780 (2013), NAR 30:3059-3066 (2002)

T-Coffee to filter

trees: IQ-Tree 