#!/bin/bash

##########
## Make the salmon indices for all 32 species.
##########

mapfile -t species < meta/species.txt

## to prepare the transcriptome indices for 
## mapping-based mode.

for sp in "${species[@]}"; do
    


done