#!/bin/sh

# When running this script want to complete a record of the time.
date

ROOT=${HOME}/proj/2020/codecheckers/Inter_Noise2024_Codes_Acoustics_Diffusion_Equation

echo ${ROOT}
cd ${ROOT}

## clear out previous results
rm -fr ${ROOT}/results_rad_imp
rm -fr ${ROOT}/results_diff_opt
rm -fr ${ROOT}/results_diff_imp




## Step 2,3 -- copy results_rad_imp to root
cp -r ${ROOT}/Results/NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5/results_rad_imp ${ROOT}
mkdir ${ROOT}/results_diff_imp
mkdir ${ROOT}/results_diff_opt

## Step 4 - copy relevant INPUT VARIABLES
cp ${ROOT}/codecheck/1-DiffEq3D.py-run2 ${ROOT}/1-DiffEq3D.py

## Step 6 - run
python 1-DiffEq3D.py

## Step 7,8 - run
python 2-DiffEq3D-WithLoop.py

## Step 9-11 

python 3-OptimizationDx.py
python 4-DiffEq3DWithNewDx.py

date

## Step 12 - prepare to make figures

matlab  -nodesktop -nosplash -r "A_ComparisonRadiosityDiffusionAfterOpt"


