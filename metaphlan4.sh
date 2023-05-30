#!/bin/sh
#SBATCH -A p31332
#SBATCH -p short
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 3:00:00
#SBATCH --mem=0
#SBATCH --job-name="metaphlan4"
#SBATCH --mail-user=anahid.moghadam@northwestern.edu
#SBATCH --mail-type=ALL
#SBATCH --output=/projects/b1042/HartmannLab/Anna/bettina/metaphlan4.out
#SBATCH --error=/projects/b1042/HartmannLab/Anna/bettina/metaphlan4.err

module purge all
module load metaphlan/4.0.1
export sample="PBS_S33"

cd /projects/b1042/HartmannLab/Anna/bettina/knead-out/${sample}
touch ../metaphlan4/profiled_${sample}.txt

metaphlan   ${sample}_R1_001_kneaddata_paired_1.fastq,${sample}_R1_001_kneaddata_paired_2.fastq --input_type fastq --bowtie2db /projects/b1042/HartmannLab/Anna/metaphlan4-db/ --nproc 24  --bowtie2out  ${sample}.bowtie2.bz2 > ../../metaphlan4/profiled_${sample}.txt

