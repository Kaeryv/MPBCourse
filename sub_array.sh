#!/bin/bash
#
#SBATCH --job-name=mpb
#SBATCH --output=output.log
#
#SBATCH --ntasks=1
#SBATCH --time=10:00
#SBATCH --mem-per-cpu=128
#SBATCH --array=0-6

source config
TID=$SLURM_ARRAY_TASK_ID
srun mpb diel=$TID 1D.ctl > 1D_$TID.log
cat 1D_$TID.log | grep tmfreqs > freqs_$TID.dat