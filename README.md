## Diffusion Equation Software for Room Acoustics Modeling & Mathematical Optimization
The software implementation in this repository is used to simulate the rooms analysed in the Conference paper "Determination of a diffusion coefficient function for long rooms using a least square optimization approach" recently published for the Conference Internoise 2024 Nantes.

The software implementation of the Acoustics Diffusion Equation is part of an ongoing research in the Building Acoustics Group at the Built Environment Department of Eindhoven University of Technology.
The main software can be found in the GitHub Repository https://github.com/Building-acoustics-TU-Eindhoven/Diffusion and is currectly **UNDER DEVELOPMENT**. It is being implemented by Ilaria Fichera in Python programming language.
The goal of the project is to specifically implement, develop and validate the diffusion equation modelling method for room acoustics purposes. Solving the diffusion equation allows to study the acoustics properties of a room and to obtain the distribution of acoustic energy over space and time in a specific room.

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
+ _Results_ folder
The solution of the Diffusion Equation is currently investigated with two different numerical methods: the Finite Different Method (FDM) by Du Fort&Frankel (Navarro et al., 2012) and the Finite Volume Method (FVM) (Munoz, 2019). 
The FDM can be used for parallelepiped shapes while the FVM can be used for any shape/geometry.
The FDM script is developed for a 1D, 2D and 3D spaces, respectively reflected in the following Python files DiffEq1D.py, DiffEq2D.py, DiffEq3D.py.
The FVM script is developed for 3D spaces in the Python file FVM.py. 

For both the numerical methods, the main software works with the following associated functions:
+ FunctionRT.py calculates the reverberation time of the room in question
+ FunctionEDT.py calculates the early decay time of the room in question
+ FunctionClarity.py calculates the clarity $C_{80}$ of the room in question based on Barron's revised theory formula.
+ FunctionDefinition.py calculates the definition $D_{50}$ of the room in question based on Barron's revised theory formula.
+ FunctionCentreTime.py calculates the centre time $T_s$ of the room in question based on Barron's revised theory formula.

## Documentation
Documentation documents of the software can be found in the link below for both FDM and FVM.
[Documentation](https://building-acoustics-tu-eindhoven.github.io/Diffusion/index.html)

## Authors
Software is being developed by Ilaria Fichera at Eindhoven University of Technology (TU/e).

## References
+ J. M. Navarro, J. Escolano and J. J. Lopez, Implementation and evaluation of a diffusion equation model based on finite difference schemes for sound field prediction in rooms, Appl. Acoust.73 (2012) 659–665.
+ R. P. Muñoz, "Numerical modeling for urban sound propagation: developments in wave-based and energy based methods," PhD Thesis, Technische Universiteit Eindhoven, 2019.

## Funding
The project is funded by <u>[NWO](https://www.nwo.nl/projecten/19430), in the Netherlands.

## License
Diffusion Code is licensed under GNU General Public License v2.0. See LICENSE.md for more details.
