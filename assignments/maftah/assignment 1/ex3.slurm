#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=1
#SBATCH --array=1-10%2
#SBATCH --job-name=ex3_array_job


LINE=$(sed -n "${SLURM_ARRAY_TASK_ID}p" config.txt)
ID=$(echo "$line" | awk '{print $1}')
Name=$(echo "$line" | awk '{print $2}')
Sex=$(echo "$line" | awk '{print $3}')
message="This is array task ${ID}, the sample name is ${Name} and the sex is ${Sex}."
echo "$message" >> output.txt