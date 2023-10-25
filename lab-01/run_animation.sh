#!/usr/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=25
#SBATCH --partition=plgrid
#SBATCH --time=00:10:00
#SBATCH --account=plglscclass23-cpu
#SBATCH --array=0-24

id=${SLURM_ARRAY_TASK_ID}

if [[ -z $id ]]; then
  echo "SLURM_ARRAY_TASK_ID IS NOT DEFINED"
  exit 1
fi

module add pov-ray

start_frame=$((4 * id + 1))
end_frame=$((4 * id + 4))

povray Subset_Start_Frame=${start_frame} Subset_End_Frame=${end_frame} animation_a_.ini
