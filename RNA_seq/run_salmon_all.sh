#!/bin/bash

mapfile -t species < meta/species.txt

if [[ ! -d /gpfs/scratch/krkehrli/salmon_quants ]]; then
    mkdir /gpfs/scratch/krkehrli/salmon_quants
fi


