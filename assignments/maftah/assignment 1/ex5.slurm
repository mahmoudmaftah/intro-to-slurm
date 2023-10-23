#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1 
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=1 
#SBATCH --job-name=ex5

module load Python/3.8.6-GCCcore-10.2.0

python ex5.py
