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

### T-Coffee filtering

* Check to see if there's a better way to do this filter.
* Can use a method to eliminate badly aligned regions of the genes.

trees: IQ-Tree 

### Species tree

Species tree is a literature synthesis from the Open Tree of Life project with undated nodes dated through a literature search.

## Gene Ontology

* Check to see if there is data about any of these plants other than _Arabidopsis thaliana._ May need to restrict only to trees that contain _Arabidopsis thaliana_ genes (honestly, I wouldn't mind some restriction...)

* There are multiple species that have GO calls on geneontology.org

## RNA-seq Processing

Downloaded the SRR files for each experiment using parallel-fastq-dump
https://github.com/rvalieris/parallel-fastq-dump