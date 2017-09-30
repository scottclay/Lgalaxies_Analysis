#!/bin/bash -l

# Tell SGE that we are using the bash shell
#$ -S /bin/bash

# Say which queue you want to submit to
#$ -q mps.q

#$ -M scottclay8@gmail.com
#$ -m abe

# Give the job a name
#$ -N pickle_lgal_MR

source /etc/profile
shopt -s expand_aliases
module load mps/software/
module load python/2.7.8
#source /home/s/sc/sc558/my_python_stack/bin/activate
source /lustre/scratch/astro/ds381/yt-x86_64/bin/activate

cd /home/s/sc/sc558/Lgalaxies_Analysis/prepare_output/
python script_read_allz_apollo.py MR
