#!/bin/bash
#SBATCH --output=ex6out.txt
#SBATCH --error=ex6error.txt

python nofile.py || exit 11
echo "other output"