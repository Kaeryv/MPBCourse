#!/bin/bash
#
#SBATCH --job-name=mpb
#SBATCH --output=output.log
#
#SBATCH --ntasks=1
#SBATCH --time=10:00
#SBATCH --mem-per-cpu=128

source config
srun mpb 1D.ctl > 1D_single.log
cat 1D_single.log | grep tmfreqs > freqs_single.dat