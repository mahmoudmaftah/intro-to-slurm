#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1
#SBATCH --job-name=ex4


idA=$(sbatch --parsable ex4A.slurm)
sbatch --dependency=afterok:${idA} ex4B.slurm


