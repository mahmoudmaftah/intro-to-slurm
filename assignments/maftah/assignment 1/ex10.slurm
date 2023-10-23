#!/bin/bash
#SBATCH --output=ex10out.txt

sinfo -o "%N %t %C" | grep -E "idle|mix"
