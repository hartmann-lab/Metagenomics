#!/bin/sh
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 17:00:00
#SBATCH --mem=0
#SBATCH --job-name="megahit"
#SBATCH --mail-user=anahid.moghadam@northwestern.edu
#SBATCH --mail-type=ALL
#SBATCH --output=/projects/b1042/HartmannLab/Anna/megahit.out
#SBATCH --error=/projects/b1042/HartmannLab/Anna/megahit.err



cd /projects/b1042/HartmannLab/Anna/Amato/pair1

module purge all
module load megahit/1.0.6.1



megahit  -1 KM-37_R1_kneaddata_paired_1.fastq.gz -2 KM-37_R1_kneaddata_paired_2.fastq.gz  -o KM-37
megahit  -1 KM-39_R1_kneaddata_paired_1.fastq.gz  -2 KM-39_R1_kneaddata_paired_2.fastq.gz -o KM-39
megahit  -1 KM-40_R1_kneaddata_paired_1.fastq.gz -2 KM-40_R1_kneaddata_paired_2.fastq.gz -o KM-40 
megahit  -1 KM-41_R1_kneaddata_paired_1.fastq.gz -2 KM-41_R1_kneaddata_paired_2.fastq.gz  -o KM-41

