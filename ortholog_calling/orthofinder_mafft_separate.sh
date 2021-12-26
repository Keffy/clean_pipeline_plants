#!/bin/bash
#
#SBATCH --job-name=orthofinder_mafft_separately
#SBATCH --output=orthofinder_mafft_sep.out
#SBATCH --ntasks-per-node=40
#SBATCH --nodes=1
#SBATCH --time=7-00:00:00
#SBATCH -p extended-40core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=keffy.kehrli@stonybrook.edu

module load shared
module load orthofinder/2.4.0

## running mafft on the orthogroups from the fasttree 
## run of orthofinder 2.4.0.




mafft 