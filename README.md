## Diffusion Equation Software for Room Acoustics Modeling & Mathematical Optimization
The software implementation in this repository is used to simulate the rooms analysed in the Conference paper "Determination of a diffusion coefficient function for long rooms using a least square optimization approach" recently published for the Conference Internoise 2024 Nantes.

The software implementation of the Acoustics Diffusion Equation is part of an ongoing research in the Building Acoustics Group at the Built Environment Department of Eindhoven University of Technology.
The main software can be found in the GitHub Repository https://github.com/Building-acoustics-TU-Eindhoven/Diffusion and is currectly **UNDER DEVELOPMENT**. It is being implemented by Ilaria Fichera in Python programming language.
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

### Repository structure
The repository consists on the following structure:
+ _Results_ folder: this folder contains the results file for each simulation for each room analysed in the conference paper. These files are provided for comparison with the files that the checker will run. Within this folder and within each room folder (e.g. _Results_/_NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5_ folder), there are three simulations results folders. 
The results from the simulation with the radiosity method are saved in the folder _results rad imp_. These have been simulated using the Radiosity software provided by the Technical University of Denmark (DTU) and Dr. George Koutsouris, which has not been shared in this repository. 
The results from the simulation with the diffusion equation with constant diffusion coefficient are saved in the folder _results diff imp_, while the results from the simulation with the diffusion equation with spatially dependent diffusion coefficient are saved in the folder _results diff opt_.
+ _1-DiffEq3D.py_ calculates the Sound Pressure Level (SPL) over the distance x with the constant diffusion coefficient. This file is the first to be run and it will save automatically the results in the generic folder _results diff_. When opening this script, depending on the room to be simulated, certain variables such as room dimensions, source positions and receiver position would need to be modified accordingly. 
+ _2-DiffEq3D-WithLoop.py_ calculates the Reverberation Time (RT) over the distance x with the constant diffusion coefficient. This file is the second script to be run and it will save automatically the results in the generic folder _results diff_. When opening this script, depending on the room to be simulated, certain variables such as room dimensions, source positions and receiver position would need to be modified accordingly. 
+ _3-OptimizationDx.py_ optimize the x-axis spatially dependent diffusion coefficient to match the SPL results over distance to the reference radiosity method results using the least-square optimization method. This file is the third script to run. It will save automatically the results in the generic folder _results diff optimised_ and it will load the SPL results of the radiosity method from the folder _results rad_ to do the calculation for the specific room. This means that depending on the room to simulate, the radiosity results will need to be copied from the _Results_/_NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5_/_result rad imp_ to the general _results rad_ folder. 
+ _4-DiffEq3DWithNewDx.py_ calculates the SPL over distance x with the new spatially dependent diffusion coefficient. This file is the fourth script to run and it will save automatically the results in the generic folder _results diff optimised_. When opening this script, depending on the room to be simulated, certain variables such as room dimensions, source positions and receiver position would need to be modified accordingly. 
+ _5-ComparisonRadiosityDiffusionAfterOpt.m_ creates the figure using the results file from the generic local folders _results diff_, _results rad_ and _results diff optimised_ for the specific room simulated. 
+ _6-ComparisonDx.m_ creates the figure using results file from different rooms.

For all the scripts, there are some associated functions (these should not be modified):
+ FunctionRT.py calculates the reverberation time of the room in question
+ FunctionEDT.py calculates the early decay time of the room in question
+ FunctionClarity.py calculates the clarity $C_{80}$ of the room in question based on Barron's revised theory formula.
+ FunctionDefinition.py calculates the definition $D_{50}$ of the room in question based on Barron's revised theory formula.
+ FunctionCentreTime.py calculates the centre time $T_s$ of the room in question based on Barron's revised theory formula.
+ DiffEq3DFunction.py is the function used for the optimization.

The diffusion equation implementation is based on the numerical Finite Different Method (FDM) by Du Fort&Frankel (Navarro et al., 2012) from the main project repository https://github.com/Building-acoustics-TU-Eindhoven/Diffusion.

## Authors
Software is being developed by Ilaria Fichera at Eindhoven University of Technology (TU/e).

## References
References are listed in the Internoise Conference Paper included in this repository.

## License
Diffusion Code is licensed under GNU General Public License v2.0. See LICENSE.md for more details.
