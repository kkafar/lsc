#!/usr/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --partition=plgrid
#SBATCH --time=00:20:00
#SBATCH --account=plglscclass23-cpu

echo "Scheduling first job step $(date +%H:%M:%S)"
srun -N 1 -n 1 --exclusive sleep 1m &
echo "Scheduling second job step $(date +%H:%M:%S)"
srun -N 1 -n 1 --exclusive sleep 1m &
wait
