#!/bin/bash
#SBATCH -A kullanici_adi #your_user_account
#SBATCH -J yeditepe_uby_hellopy #job_name
#SBATCH -N 1 #number of nodes to be used
#SBATCH -n 14 # number of tasks (mpi) to be lunched
#SBATCH -c 1 #number of cores per task.. Not mandatory
#SBATCH -p sardalya #name of the job queue

#all modules can be listed with > module avail
#for this job python/3.6.5-gcc is used
module load centos7.3/comp/python/3.6.5-gcc

#run virtualenv under the $HOME directory and activate it
virtualenv --no-download $HOME/virtualspace/venv
source $HOME/virtualspace/venv/bin/activate

#install packages
pip install -r ./requirements.txt

python ./main.py

exit
