#!/bin/bash -e

#SBATCH --job-name      oceananigans-julit   # job name (shows up in the queue)
#SBATCH --time          00-00:35:00  # Walltime (DD-HH:MM:SS)
#SBATCH --gpus-per-node A100:1
#SBATCH --cpus-per-task 12    # number of CPUs per task (1 by default)
#SBATCH --mem           6G         # amount of memory per node (1 by default)
#SBATCH --profile       task    
#SBATCH --output        slog/%j.out

# load CUDA module
module purge >/dev/null 2>&1
module load Julia/1.11.3-GCC-12.3.0-VTune
module load CUDA/12.6.3

# monitor GPU usage
nvidia-smi --query-gpu=timestamp,utilization.gpu,utilization.memory,memory.used,memory.total \
    --format=csv,nounits -l 5 > "gpustats-${SLURM_JOB_ID}.csv" &

julia --threads ${SLURM_CPUS_PER_TASK}  ../scripts-serial/baroclinic_adjustment.jl


