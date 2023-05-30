#!/bin/sh
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 10:00:00
#SBATCH --mem=0
#SBATCH --job-name="knead"
#SBATCH --mail-user=anahid.moghadam@northwestern.edu
#SBATCH --mail-type=ALL
#SBATCH --output=/projects/b1042/HartmannLab/Anna/bettina/knead.out
#SBATCH --error=/projects/b1042/HartmannLab/Anna/bettina/knead.err

module purge all
conda activate kneaddata
export sample="V1D-5_S1"
cd /projects/b1042/HartmannLab/Anna/bettina/raw-seq


kneaddata  --input ${sample}_R1_001.fastq  --input ${sample}_R2_001.fastq --reference-db /projects/b1042/HartmannLab/Anna/bettina/decon/GRCm39/GRCm39 -o ../knead-out/${sample} 
