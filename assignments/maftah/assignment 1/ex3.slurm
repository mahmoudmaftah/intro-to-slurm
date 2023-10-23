#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --nodes=1
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=1
#SBATCH --array=1-10%2
#SBATCH --job-name=ex3_array_job
#SBATCH --output=output.txt


LINE=$(sed -n "${SLURM_ARRAY_TASK_ID}p" config.txt)
IFS=$'\t' read -r -a ARRAY <<< "$LINE"

ID=${ARRAY[0]}
Name=${ARRAY[1]}
Sex=${ARRAY[2]}

echo "This is array task ${ID}, the sample name is ${Name} and the sex is ${Sex}."
