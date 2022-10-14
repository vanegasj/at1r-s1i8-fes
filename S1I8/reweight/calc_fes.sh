#!/bin/bash

# The colvar.* files with the TM1-TM6, TM1-ICL2, TM5-ICL2, and TM6-H8 distances were computed from the trajectories using the 8 plumed driver commands below:

#plumed driver --ixtc ../M000/topol.xtc --plumed plumed0.dat --trajectory-stride 5
#plumed driver --ixtc ../M001/topol.xtc --plumed plumed1.dat --trajectory-stride 5
#plumed driver --ixtc ../M002/topol.xtc --plumed plumed2.dat --trajectory-stride 5
#plumed driver --ixtc ../M003/topol.xtc --plumed plumed3.dat --trajectory-stride 5
#plumed driver --ixtc ../M004/topol.xtc --plumed plumed4.dat --trajectory-stride 5
#plumed driver --ixtc ../M005/topol.xtc --plumed plumed5.dat --trajectory-stride 5
#plumed driver --ixtc ../M006/topol.xtc --plumed plumed6.dat --trajectory-stride 5
#plumed driver --ixtc ../M007/topol.xtc --plumed plumed7.dat --trajectory-stride 5

# The following two commands combine the data from the 8 walkers to be used as input for the re-weighting algorithm
sh combine_file.sh
sh combine_colvar.sh

#cp ../M000/HILLS .
# Reweight the data using the well-tempered metadynamics bias and produce two 2D FES
plumed --no-mpi driver --noatoms --plumed plumed_reweight.dat
