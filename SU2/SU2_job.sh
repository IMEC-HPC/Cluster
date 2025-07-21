#!/bin/bash

# ############# Zona de Parámetros de solicitud de recursos a SLURM ####################
# ##### Se requiere la palabra reservada #SBATCH y el nombre del recurso ###############

#SBATCH --job-name=malla_7      #Nombre del job
#SBATCH -p medium               #Cola a usar, Default=short (Ver colas y limites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                    #Nodos requeridos, Default=1
#SBATCH --ntasks=24             #Task que se ejecutan en el nodo
##SBATCH -n 48                   #Total de task requeridos (suma de todos los nodos a usar) 
##SBATCH --ntasks-per-node=24    # Task que cada nodo a usar
#SBATCH --cpus-per-task=2       #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=128G              #Memoria en Mb por CPU, Default=2048
#SBATCH --time=96:00:00         #Tiempo maximo de corrida, Default=2 horas
#SBATCH --mail-user=usuario@uniandes.edu.co
#SBATCH --mail-type=ALL         #Envia correo
#SBATCH -o Hi-Lift-Tu.o%j       #Nombre de archivo de la salida en pantalla 
#SBATCH -e Hi-Lift-Tu-error.o%j #Nombre de archivo con los posibles errorjes de ejecucion
#########################################################################################

####################### Zona Carga Módulos ##############################################

module load mpi/1.0.0

module load SU2/v7.0.3-mpi

########### Zona de Ejecución de código y comandos a ejecutar secuencialmente ###########

echo "Corriendo SU2_CFD"
mpirun -np 24 SU2_CFD malla_7.cfg
#########################################################################################
