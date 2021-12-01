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

###parallel-fastq-dump : 0.6.7

fastq-dump : 2.8.0
Downloaded the SRR files for each experiment using parallel-fastq-dump
https://github.com/rvalieris/parallel-fastq-dump

###FastQC v0.11.5
Ran before and after trimming.

Checked for the contaminants listed her:
https://github.com/csf-ngs/fastqc/blob/master/Contaminants/contaminant_list.txt

Combined all fastqc results into a single .html file using this script:
https://github.com/riverlee/CQScripts/blob/master/merge_fastqc_report.pl

### Fastp for trimming

fastp: an ultra-fast all-in-one FASTQ preprocessor                                        version 0.12.4

Platforms used in these studies:
Illumina HiSeq 2000
Illumina Genome Analyzer
Illumina Genome Analyzer IIx
Illumina MiSeq
NextSeq 500
Illumina HiSeq 4000
HiSeq X Ten
Illumina HiSeq 2500

