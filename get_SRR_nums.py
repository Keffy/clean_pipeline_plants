#!/bin/python

import argparse
import wget
from Bio import Entrez
from time import sleep


parser = argparse.ArgumentParser()
parser.add_argument("--email", help="You need to set your email address for NCBI.", required=True)
parser.add_argument("--api_key", help="Supply an API key to NCBI for more requests per second.")
parser.add_argument("--out_dir", help="Supply an output directory for file downloads.")
arg_dict = vars(parser.parse_args())
Entrez.email = arg_dict['email']
Entrez.api_key = arg_dict['api_key']
output_dir = arg_dict['out_dir']