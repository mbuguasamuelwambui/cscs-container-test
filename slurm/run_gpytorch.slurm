#!/bin/bash
#SBATCH --job-name=gpytorch
#SBATCH --output=gp-%j.out
#SBATCH --gpus=1
#SBATCH --time=02:00:00
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G

srun --mpi=pmix           --container-image=gpytorch-scratch           --container-mounts=$SCRATCH:/workspace           bash -lc "cd /workspace/gpytorch-container/scripts && python3 run_gp_model.py"
