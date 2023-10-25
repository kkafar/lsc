#!/usr/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=25
#SBATCH --partition=plgrid
#SBATCH --time=00:10:00
#SBATCH --account=plglscclass23-cpu
#SBATCH --array=0-24

module add pov-ray

id=${SLURM_ARRAY_TASK_ID}
start_frame=$((4 * id + 1))
end_frame=$((4 * id + 3))

povray Subset_Start_Frame=1 Subset_End_Frame=2 animation_a_.ini
