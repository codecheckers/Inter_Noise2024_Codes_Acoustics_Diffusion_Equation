# -*- coding: utf-8 -*-
"""
Created on Wed Aug 16 09:49:08 2023

@author: 20225533
"""
from scipy.optimize import least_squares
import numpy as np
from os.path import join as pjoin
import scipy.io as sio
import matplotlib.pyplot as plt

def calculate_energy_density(k):
    from DiffEq3DFunction import calculate_energy_density_diffusion
    spl_rec_x_t0, Dx = calculate_energy_density_diffusion(k,length,width,height,x_source,y_source,z_source,x_rec,y_rec,z_rec)
    #Dx = calculate_energy_density_diffusion(k)
    return spl_rec_x_t0, Dx

def obj_fun(k):
    print(k)
    D_list.append(k)
    spl_rec_x_t0, Dx = calculate_energy_density(k)
    SPL_t0_R = mat_contents["SPL_t0_R"][0]
    mean_free_path_rounded = round(mean_free_path*2)/2
    if x_source <= mean_free_path_rounded:
        pos_from = x_source + mean_free_path_rounded
        temp = abs(pos_from - x_axis)
        x_from = x_axis[np.argmin(temp)]
        idx_dist = np.where(x_axis == x_from)[0][0]
        SPL_t0_R_nosource = SPL_t0_R[idx_dist:-1]
        spl_rec_x_t0_nosource = spl_rec_x_t0[idx_dist:-1]
    else:
        pos_source = np.where(x_axis == x_source)
        pos_source_before = np.where(x_axis == x_source-mean_free_path_rounded)[0][0]
        pos_source_after = np.where(x_axis == x_source+mean_free_path_rounded)[0][0]
        SPL_t0_R[pos_source_before+1:pos_source_after-1] = 0
        SPL_t0_PY_after_nosource = spl_rec_x_t0
        SPL_t0_PY_after_nosource[pos_source_before+1:pos_source_after-1] = 0
    
    spl_diff = ((spl_rec_x_t0 - SPL_t0_R))
    cost = 0.5*(sum(spl_diff**2)) #+ mu*(-np.log10(Dx-D_min))#+0.5*(sum(rt_diff**2))
    cost_list.append(cost)
    
    return spl_diff

#INPUT VARIABLES
D_th = np.load('results_diff_imp/D_th.npy')
RT_Sabine = np.load('results_diff_imp/RT_Sabine.npy')
c0 = np.load('results_diff_imp/c0.npy')
alpha = np.load('results_diff_imp/alpha.npy')
length = np.load('results_diff_imp/length.npy')
width = np.load('results_diff_imp/width.npy')
height = np.load('results_diff_imp/height.npy')
x_source = np.load('results_diff_imp/x_source.npy')
y_source = np.load('results_diff_imp/y_source.npy')
z_source = np.load('results_diff_imp/z_source.npy')
x_rec = np.load('results_diff_imp/x_rec.npy')
y_rec = np.load('results_diff_imp/y_rec.npy')
z_rec = np.load('results_diff_imp/z_rec.npy')
mean_free_path = np.load('results_diff_imp/mean_free_path.npy')
x_axis = np.load('results_diff_imp/x_axis.npy')

C2 = 0
C1 = 0
C0 = D_th
mu = 5

k = [C2,C1,C0] #C2*r**2 + C1*r + C0

D_list = []
cost_list = []
data_dir = "results_rad_imp"
mat_fname = pjoin(data_dir, 'SPL_t0_R.mat')
mat_contents = sio.loadmat(mat_fname)

#MAIN OPTIMIZATION CALCULATION
result = least_squares(obj_fun, k, bounds=([0,0,D_th], [np.inf,np.inf,D_th+0.001]))

optimal_D = result.x
np.save('results_diff_opt\\optimal_D',optimal_D)

plt.figure(20)
plt.title("Figure 20: D and cost")
plt.plot(D_list,cost_list)

#Calculation of error
n = mat_contents["SPL_t0_R"].shape[1] - 10
RMSD_before = np.sqrt((2/n)*cost_list[0])
RMSD_after = np.sqrt((2/n)*cost_list[-1])