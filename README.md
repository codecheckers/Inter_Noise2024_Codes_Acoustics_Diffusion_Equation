## Diffusion Equation Software for Room Acoustics Modeling & Mathematical Optimization
The software implementation in this repository is used to simulate the rooms analysed in the Conference paper "Determination of a diffusion coefficient function for long rooms using a least square optimization approach" recently submitted and accepted for the Conference Internoise 2024 Nantes.

The software implementation of the Acoustics Diffusion Equation is part of an ongoing research in the Building Acoustics Group at the Built Environment Department of Eindhoven University of Technology.
The main software can be found in the [GitHub Repository] (https://github.com/Building-acoustics-TU-Eindhoven/Diffusion) and is currectly **UNDER DEVELOPMENT**. It is being implemented by Ilaria Fichera in Python programming language. The diffusion equation implementation of this repository is based on the numerical Finite Different Method (FDM) by Du Fort&Frankel (Navarro et al., 2012) from the main project [GitHub Repository] (https://github.com/Building-acoustics-TU-Eindhoven/Diffusion).
The goal of the project is to specifically implement, develop and validate the diffusion equation modelling method for room acoustics purposes. Solving the diffusion equation allows to study the acoustics properties of a room and to obtain the distribution of acoustic energy over space and time in a specific room.

## Summary of the Internoise conference paper
One of the limitation of the diffusion equation model is its constant diffusion coefficient, mostly for non-proportional room. In this study, a novel method is described to optimise the diffusion coefficient for long rooms by comparing the results of the diffusion equation with those computed with the radiosity model. The least-square optimization method is used to minimise the differences between the results in Sound Pressure Level between the two models and determine a spatially dependent diffusion coefficient. In particular, this paper explores the analysis of long rooms where it is assumed that the diffusion coefficient would change over the x-axis direction (length of the room) and that would be kept constant over the cross-section. A formula for diffusion coefficient for long rooms is proposed and based on a polynomial function with three variable: C2, C1 and C0, where C0 is considered the theoretical diffusion coefficient of the specific room. It is found that the method used in this study seems to be suitable for the task, that the optimised diffusion coefficient is dependent on the length of the room but also the source position. To directly calculate a spatial-dependent diffusion coefficient for the specific room, the relation between the constants of the polynomial function and the source position, the room’s length, the room’s cross-section, and the absorption coefficient will be assessed.

## Setup and Usage instructions
In order to run the scripts in this repository to check the reproducibility of the results of the Internoise Paper, the following first steps will need to be done.
1. Download and install Anaconda or download and install any Python software IDE you prefer;
2. Clone/Fork this repository to a folder of your preference;
3. Open the Main files through the preferred IDE and test the software.

To properly run the software, the following libraries are needed:
- Python version 3.10.9 or above
- math
- matplotlib
- numpy
- scipy
- sys
- time
- [npy-matlab] (https://github.com/kwikteam/npy-matlab)

### Repository structure
The repository consists on the following structure:
+ `Results` folder: 
This folder contains the results file for each simulation for each room analysed in the conference paper. 
Within this folder, there are folders with the following name code, e.g. `Results/NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5` folder, where _NRP_ stands for non-proportional room, _39x3x3_ is the dimension of the room, _S_ stands for source, _1.5,1.5,1.5_ are the three coordinates of the source position, _R_ stands for recevier, _x,1.5,1.5_ are the coordinates of the receiver position. It is included an _x_ in the receiver position because the objective is to find the Sound Pressure Level at each x position, keeping constant the y and z position. Within each room folder (e.g. `Results/NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5` folder), there are three simulations results folders. 
The results from the simulation with the radiosity method are saved in the folder `results_rad_imp`. These have been simulated using the Radiosity software provided by the Technical University of Denmark (DTU) and Dr. George Koutsouris (this software is not included in this repository). 
The results from the simulation with the diffusion equation with constant diffusion coefficient are saved in the folder `results_diff_imp`, while the results from the simulation with the diffusion equation with spatially dependent diffusion coefficient are saved in the folder `results_diff_opt`.
+ `results_diff_imp` local folder to store results of the simulation done on the moment
+ `results_diff_opt` local folder to store results of the simulation done on the moment
+ `results_rad_imp` local folder to store results of the simulation done on the moment
+ Python scripts
+ Matlab scripts
+ Inter_Noise2024_Paper 

### Workflow for correctly running the software

1. Decide which room to simulate. For example let's consider for this tutorial the room 39x3x3 $m^3$ with Source S1.5m,1.5m,1.5m and Receiver R8m,1.5m,1.5m.
2. If you want to simulate the room 39x3x3 $m^3$ with Source S1.5m,1.5m,1.5m and Receiver R8m,1.5m,1.5m, you need to make sure that the local folder `results_rad_imp` has the Radiosity method results file of the room you are simulating. The Radiosity method results files are pre-prepared as the reference results and they are stored in each room result folder.
3. Go to the `Results/NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5` and copy the `results_rad_imp` folder and paste it in the `C:\....\Inter Noise2024 Codes Acoustics Diffusion Equation` folder.
4. Open the first python script `1-DiffEq3D.py`.
5. In the "INPUT VARIABLE" section of the script, enter the length (x-axis), width (y-axis), heigth (z-axis) of the room you want to simulate, the source position coordinates (x_source, y_source, z_source) and the receiver position coordinates (y_rec, z_rec) in meters. For these specific simulations, the x-axis coordinate of the receiver is not important since the objective is to calculate all the acoustic variables on a line on the x-axis. 
6. Press run. While running you will see printed the percentage of completion of calculation. Once arrived at 100%, some Figures will show and all the relevant results will be saved in the local folder `results_diff_imp`.
7. Open the second python script `2-DiffEq3D-WithLoop.py`.
8. If you have set up correctly the first script, you need to only press run. This script will calculate the reverberation time for each position x of the room and it will save the results in the local folder `results_diff_imp`.
9. If you have done all the steps above, open the third python script `3-OptimizationDx.py` and press run. The results will be saved in the local folder `results_diff_opt`.
The optimization simulation is difficult to quantify as it depends on how much different are the SPL curve over the distance between the radiosity method and the diffusion equation method. It will run until 100% as many times as the quantity C2, C1, and C0 will need to be optimised to minimise the difference between the two curves.
10. Open the fourth python script `4-DiffEq3DWithNewDx.py` and press run. The results will be saved in the local folder `results_diff_opt`.
11. Once you have all the results, you can create figures and reproduce the same figures as per Conference paper.
12. Open the matlab file `A_ComparisonRadiosityDiffusionAfterOpt.m` and run. It should give the same figures as per the conference paper for the specific room you have simulated.
13. Open the matlab file `B_ComparisonDx` and run. This will give you the results of comparison between diffusion coefficients of different rooms.

If some error occurs it might mean that the results on the local folders `results_diff_imp`, `results_diff_opt` and `results_rad_imp` are of different rooms and therefore there are problems with length of vectors and arrays.

## Explanation of what each script calculates

+ File `1-DiffEq3D.py` calculates the Sound Pressure Level (SPL) over the space and over time with a constant diffusion coefficient, but also other room acoustics parameters such as early decay curve, reverberation time at the receiver position, clarity etc... It creates also some figures of interesting results for the room simulated. For the Conference paper, the interesting parameter is the Sound Pressure Level (SPL) over the distance x with the constant diffusion coefficient.

+ File `2-DiffEq3D-WithLoop.py` calculates specifically the Reverberation Time (RT) over the distance x with the constant diffusion coefficient. 

+ File `3-OptimizationDx.py` optimize the x-axis spatially dependent diffusion coefficient to match the SPL results over distance to the reference radiosity method results using the least-square optimization method. In particular, the script will use some initial values of the constants C2, C1 and C0 and optimises these constants until the difference between the diffusion equation SPL over the x-axis and the radiosity SPL over the x-axis is minimised.  

+ File `4-DiffEq3DWithNewDx.py` is similar to the first file and it can calculate all the acoustics parameters of the room in question. However, in this case, the diffusion coefficient used in the calculation is optimised and is x-axis spatially dependent. The script incorporates the fact that the diffusion coefficient is now a vector compared to previously when it was only a constant variable. For the Conference paper, the interesting parameter is the Sound Pressure Level (SPL) over the distance x with the x-axis spatially dependent diffusion coefficient.

+ File `A_ComparisonRadiosityDiffusionAfterOpt.m` creates the figure using the results file from the generic local folders `results_diff_imp`, `results_rad_imp` and `results_diff_opt` for the specific room simulated. It creates Figure 1, Figure 2 , Figure 3, Figure 4 , Figure 5 and Figure 7 of the conference paper.

+ File `B_ComparisonDx.m` creates the figure using results file from different rooms. It compares the x-axis spatially dependent diffusion coefficients between rooms. It creates Figure 6 and Figure 8 of the conference paper.

For all the scripts, there are some associated functions (these should not be modified):
+ `FunctionRT.py` calculates the reverberation time of the room in question
+ `FunctionEDT.py` calculates the early decay time of the room in question
+ `FunctionClarity.py` calculates the clarity $C_{80}$ of the room in question based on Barron's revised theory formula.
+ `FunctionDefinition.py` calculates the definition $D_{50}$ of the room in question based on Barron's revised theory formula.
+ `FunctionCentreTime.py` calculates the centre time $T_s$ of the room in question based on Barron's revised theory formula.
+ `DiffEq3DFunction.py` is the function used for the optimization.

## Authors
Software is being developed by Ilaria Fichera at Eindhoven University of Technology (TU/e).

## References
References are listed in the Internoise Conference Paper.

## License
Diffusion Equation Code and Optimization Code are licensed under GNU General Public License v2.0. See LICENSE.md for more details.
