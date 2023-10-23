#!/bin/bash
#SBATCH --export=NONE 
#SBATCH --partition=defq 
#SBATCH --array=2-11%2
#SBATCH --job-name=ex3_array_job


LINE=$(sed -n "${SLURM_ARRAY_TASK_ID}p" config.txt)
ID=$(echo "$LINE" | awk '{print $1}')
Name=$(echo "$LINE" | awk '{print $2}')
Sex=$(echo "$LINE" | awk '{print $3}')
message="This is array task ${ID}, the sample name is ${Name} and the sex is ${Sex}."
echo "$message" >> output.txt