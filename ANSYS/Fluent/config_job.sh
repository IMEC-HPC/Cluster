#!/bin/bash

# ##### Zona de Par�metros de solicitud de recursos a SLURM #################
# ##### Se requiere la palabra reservada #SBATCH y el nombre del recurso ####

#SBATCH --job-name=t25_a33_u15      #Nombre del job
#SBATCH -p long               #Cola a usar, Default=short (Ver colas y limites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                    #Nodos requeridos, Default=1
#SBATCH --ntasks=4             #Task que se ejecutan en el nodo
##SBATCH --nodelist=nodei-10     #Especificar nodo
#SBATCH --cpus-per-task=6       #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=64G               #Memoria en Mb por CPU, Default=2048
#SBATCH --time=1-24:0:00       #Tiempo maximo de corrida, Default=2 horas
#SBATCH --mail-user=ma.vargas73@uniandes.edu.co
#SBATCH --mail-type=ALL         #Envia correo
#SBATCH -o Hi-Lift-Tu.o%j       #Nombre de archivo de la salida en pantalla 
#SBATCH -e Hi-Lift-Tu-error.o%j #Nombre de archivo con los posibles errorjes de ejecucion
#########################################################################################

####################### Zona Carga M�dulos ##############################################

module load ansys/24
. /hpcfs/apps/oneApi/2024.0.1/setvars.sh

########### Zona de Ejecuci�n de c�digo y comandos a ejecutar secuencialmente ###########

echo "Ejecuci�n Ansys"

fluent 2ddp -mpi=intel -t24  -g -i journal.jou > console.out 
#########################################################################################

