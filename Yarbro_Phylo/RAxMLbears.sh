#!/bin/bash
#SBATCH -J RAxML
#SBATCH -n 1
#SBATCH -t 30:00
#SBATCH --mem=20g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ryarbro@wyomingviewpainting.com
#SBATCH --account=inbre-train

#SBATCH --ntasks-per-node=8
#SBATCH partition=inv-inbre 


echo "Starting raxm1HPC run at $(date)"

module load swset gcc raxml

raxmlHPC-PTHREADS-AVX -T 8 -f a -m GTRGAMMA -p 618 -N 2 -x 309 -s AllBears.aln -n AllBearsTree -w /project/inbre-train/inbre003/molb4485/Yarbro_Phylo/AllBearsTree -o GiantPanda


echo "RAxML has finsihed at $(date)"
~                                       :

