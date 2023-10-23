#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=1 
#SBATCH --job-name=ex4B
#SBATCH --output=ex4sol.txt


python ex4B.py < ex4Aout.txt






