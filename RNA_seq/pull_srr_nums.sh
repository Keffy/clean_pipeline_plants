!#/bin/bash

### pull all the SRX numbers and write to one big fat comma separated file

#esearch -db sra -query "SRX1821735" | efetch -format runinfo | egrep "SRR*,"

#esearch -db sra -query "SRX1821735" | efetch -format runinfo | egrep -o "SRR[0-9]+" | head -n 1 