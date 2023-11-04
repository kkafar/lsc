#!/usr/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=plgrid
#SBATCH --time=00:10:00
#SBATCH --job-name="Hello world"
#SBATCH --account=plglscclass23-cpu
#SBATCH --output=hello.out

echo "Hello world"
exit 0
